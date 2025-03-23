const std = @import("std");

/// Ao usar o sistema de build do Zig, a configuração em build.zig
/// adiciona um alias "gd_windows_lib" para este módulo.
const gd = @import("gd_windows_lib");

pub fn main() void {
    // Cria uma janela de teste (a partir da API pública)
    const window = gd.create_window("GDarkeness Window", 800, 600);

    std.debug.print("Janela criada: \"{s}\" com dimensões {d}x{d}\n", .{ window.title, window.width, window.height });

    // Placeholder futuro: loop de eventos ou atualização contínua.
    // Por ora apenas finaliza a execução.
}
