/// Arquivo de exportação da API pública do módulo gd_windows.
pub const window_manager = @import("window_manager.zig");

/// Cria e retorna uma janela utilizando o window_manager.
pub fn create_window(title: []const u8, width: u32, height: u32) window_manager.Window {
    return window_manager.Window.create(title, width, height);
}
