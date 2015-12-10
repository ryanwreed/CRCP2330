class Parser

	def initialize(assembly_instructions)
		@assembly_instructions = assembly_instructions
		@machine_instructions = []
	end

	def parse
		@assembly_instructions.each do |instruciton|
			if command_type(instruciton) == :a_command
				@machine_instructions << assemble_a_command(instruciton)
			elsif command_type(instruciton) == :c_command
				@machine_instructions << assemble_c_command(instruciton)
			end
		end
		@machine_instructions
	end

	def assemble_a_command(instruciton)
		command = '0'
		command << constant(instruction[1..-1]
	end

	def constant(value)
		"%015b" % value
	end

	def assemble_c_command(instruciton)
		command = "111"
		command << dest(mnemonic) << comp(mnemonic) << jump(mnemonic)
	end

	def command_type(instruciton)
		if instruciton.start_with?("@")
			:a_command
		else
			:c_command 
		end
	end
end