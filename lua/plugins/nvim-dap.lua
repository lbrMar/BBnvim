local debugging_signs = require("util.icons").debugging_signs

return {
	"mfussenegger/nvim-dap",
	config = function()
		-- local dap = require("dap")
		-- local dapui = require("dapui")

		-- set custom icons
		for name, sign in pairs(debugging_signs) do
			sign = type(sign) == "table" and sign or { sign }
			vim.fn.sign_define(
				"Dap" .. name,
				{ text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
			)
		end

		-- Set keymaps to control the debugger
		vim.keymap.set("n", "<leader>dc", require("dap").continue) -- debug continue
		vim.keymap.set("n", "<leader>dso", require("dap").step_over) -- debug step-over
		vim.keymap.set("n", "<leader>dsi", require("dap").step_into) -- debug step-into
		vim.keymap.set("n", "<leader>dsb", require("dap").step_out) -- debug step-back
		vim.keymap.set("n", "<leader>b", require("dap").toggle_breakpoint) -- breakpoint
		vim.keymap.set("n", "<leader>B", function()
			require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
		end)
	end,
	dependencies = "rcarriga/nvim-dap-ui",
}
