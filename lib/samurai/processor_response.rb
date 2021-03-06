# Samurai::ProcessorResponse
# -----------------

# Simple class for serializing Samurai <processor_response> entities
class Samurai::ProcessorResponse < Samurai::Base

  # Helper method for accessing the AVS result code from the response messages
  def avs_result_code
    avs_result_code_message = self.messages.find {|m| m.context=='processor.avs_result_code' || m.context=='gateway.avs_result_code' }
    avs_result_code_message && avs_result_code_message.key
  end

  # Helper method for accessing the CVV result code from the response messages
  def cvv_result_code
    cvv_result_code_message = self.messages.find {|m| m.context=='processor.cvv_result_code' || m.context=='gateway.cvv_result_code' }
    cvv_result_code_message && cvv_result_code_message.key
  end

end