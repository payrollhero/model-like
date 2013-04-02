module ModelLike
  class ModelLikeError < StandardError
  end

  class RecordInvalid < ModelLikeError
    def initialize(object)
      super(object.errors.full_messages.to_sentence)
    end
  end
end
