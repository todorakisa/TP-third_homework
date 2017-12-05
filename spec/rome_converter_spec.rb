require_relative '../lib/RomeConverter.rb'

describe RomeConverter do
        it "fails to convert 0" do
        converter = RomeConverter.new
        message = converter.to_rome("0")
        expect(message).to eql("")
        end
        
        it "It converts 2 to II" do
        converter = RomeConverter.new
        message = converter.to_rome("2")
        expect(message).to eql("II")
        end
        it "It converts II to 2" do
        converter = RomeConverter.new
        message = converter.to_dec("II")
        expect(message).to eql("2")
        end
        
        it "Try to convert 23 to XXIIV" do
        converter = RomeConverter.new
        message = converter.to_rome("23")
        expect(message).not_to eql("XXIIV")
        end
        it "Try to convert XXIIV to 23" do
        converter = RomeConverter.new
        message = converter.to_dec("XXIIV")
        expect(message).not_to eql("23")
        end
        
        it "Try to convert 14 to XIIII" do
        converter = RomeConverter.new
        message = converter.to_rome("1")
        expect(message).not_to eql("XIIII")
        end 
               
        it "It converts 4 to IV" do
        converter = RomeConverter.new
        message = converter.to_rome("4")
        expect(message).to eql("IV")
        end        
        it "Try to converts 4 to IIII" do
        converter = RomeConverter.new
        message = converter.to_rome("4")
        expect(message).not_to eql("IIII")
        end
        it "It converts IV to 4" do
        converter = RomeConverter.new
        message = converter.to_dec("IV")
        expect(message).to eql("4")
        end        
        it "Try to converts IIII to 4" do
        converter = RomeConverter.new
        message = converter.to_dec("IIII")
        expect(message).not_to eql("4")
        end
        
        it "Try to converts 100 to C" do
        converter = RomeConverter.new
        message = converter.to_rome("100")
        expect(message).to eql("C")
        end
        it "It converts C to 100" do
        converter = RomeConverter.new
        message = converter.to_dec("C")
        expect(message).to eql("100")
        end        
        
        it "Try to converts 51 to LI" do
        converter = RomeConverter.new
        message = converter.to_rome("51")
        expect(message).to eql("LI")
        end
        it "It converts LI to 51" do
        converter = RomeConverter.new
        message = converter.to_dec("LI")
        expect(message).to eql("51")
        end 
        
        it "converts 150 to CL" do
        converter = RomeConverter.new
        message = converter.to_rome("150")
        expect(message).to eql("CL")
        end
        
        it "Try to converts 5000 to MMMMM" do
        converter = RomeConverter.new
        message = converter.to_rome("5000")
        expect(message).not_to eql("MMMMM")
        end
        it "It converts MMMMM to 5000" do
        converter = RomeConverter.new
        message = converter.to_dec("MMMMM")
        expect(message).not_to eql("5000")
        end 
end
