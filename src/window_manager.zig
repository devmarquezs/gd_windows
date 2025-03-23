const std = @import("std");
const builtin = @import("builtin");

pub const Window = struct {
    title: []const u8,
    width: u32,
    height: u32,

    /// Cria uma instância do WindowManager com os parâmetros informados.
    pub fn create(title: []const u8, width: u32, height: u32) Window {
        return Window{
            .title = title,
            .width = width,
            .height = height,
        };
    }

    /// Inicializa a janela utilizando a implementação específica da plataforma.
    pub fn init(self: *Window) void {
        comptime {
            if (builtin.os.tag == .windows) {
                // Invoca a implementação específica para Windows.
                @import("platform/windows.zig").createWindow(self.title, self.width, self.height);
            } else if (builtin.os.tag == .linux) {
                // Invoca a implementação específica para Linux.
                @import("platform/linux.zig").createWindow(self.title, self.width, self.height);
            } else {
                std.debug.print("Plataforma não suportada ainda.\n", .{});
            }
        }
    }

    /// Placeholder para atualização ou processamento contínuo da janela.
    pub fn update(self: *Window) void {
        std.debug.print("Atualizando janela: \"{s}\"\n", .{self.title});
    }
};

// Teste simples para verificar a criação da janela.
test "criar janela básica" {
    const win = Window.create("Teste", 640, 480);
    const cond_width: bool = win.width == 640;
    const cond_height: bool = win.height == 480;
    std.testing.expect(cond_width);
    std.testing.expect(cond_height);
    std.debug.print("Teste 'criar janela básica' passou!\n", .{});
}
