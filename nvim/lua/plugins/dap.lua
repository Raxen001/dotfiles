return {
	"mfussenegger/nvim-dap",
	lazy = true,
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
		"williamboman/mason.nvim",
		"jay-babu/mason-nvim-dap.nvim",
	},
	keys = {
		{
			"<F3>",
			function()
				require("dap").toggle_breakpoint()
			end,
			desc = "Debugger Breakpoint",
		},
		{
			"<F4>",
			function()
				require("dap").terminate()
			end,
			desc = "Debugger Terminate",
		},
		{
			"<Up>",
			function()
				require("dap").continue()
			end,
			desc = "Debugger Continue",
		},
		{
			"<Left>",
			function()
				require("dap").step_out()
			end,
			desc = "Debugger Step Out",
		},
		{
			"<Right>",
			function()
				require("dap").step_into()
			end,
			desc = "Debugger Step Into",
		},
		{
			"<Down>",
			function()
				require("dap").step_over()
			end,
			desc = "Debugger Step Over",
		},
		{
			"<leader>dl",
			function()
				require("dap").list_breakpoints()
				vim.cmd("copen")
			end,
			desc = "Debugger List Breakpoints",
		},
		{
			"<leader>du",
			function()
				require("dapui").toggle()
			end,
			desc = "Debugger UI",
		},
		{
			"<leader>de",
			function()
				require("dapui").eval()
			end,
			desc = "Eval",
		},
	},
	config = function()
		require("dapui").setup()
		require("nvim-dap-virtual-text").setup()
		require("mason").setup()
		require("mason-nvim-dap").setup({
			ensure_installed = { "python", "php", "node2", "js", "bash", "delve", "cppdbg" },
			handlers = {},
		})

		local dap, dapui = require("dap"), require("dapui")

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
