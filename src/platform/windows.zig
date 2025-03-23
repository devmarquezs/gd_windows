const std = @import("std");

pub fn createWindow(title: []const u8, width: u32, height: u32) void {
    std.debug.print("Criando janela no Windows: \"{s}\" de {d}x{d}\n", .{ title, width, height });
    // integração com a API Win32 ou outro método para criar uma janela no Windows.
}
