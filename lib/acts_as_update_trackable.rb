module ActsAsUpdateTrackable

    def self.included(base)
      base.send :extend, ClassMethods
      base.send :include, InstanceMethods
    end

    module ClassMethods
      def acts_as_update_trackable
        before_save :check_attribute_changes
      end
    end

    module InstanceMethods

      def check_attribute_changes
        # Check to see which fields have been updated
        self.changes.each_key do |field|

          # check each attribute that has been updated for a corresponding
          # field_updated_at field in the model
          if self.has_attribute? "#{field}_updated_at"

            # since that field exists update the field_updated_at to the
            # current timestamp
            self.send("#{field}_updated_at=", Time.now)
          end
        end
      end
    end

end

ActiveRecord::Base.send :include, ActsAsUpdateTrackable