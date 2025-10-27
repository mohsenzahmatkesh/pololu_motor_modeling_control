close all

%% ===== Electrical Dynamics =====
close all
figure;
set(gcf, 'Position', [100, 100, 900, 800]);
tiledlayout(3, 1, 'Padding', 'compact', 'TileSpacing', 'compact');

% ===== Voltage =====
nexttile;
plot(out.tout, out.voltage, 'Color', [0.2, 0.2, 0.6], 'LineWidth', 2.5);
grid off;
ylabel('Voltage (V)', 'Interpreter', 'latex', 'FontSize', 22);
% title('\textbf{Motor Input Voltage}', 'Interpreter', 'latex', 'FontSize', 20);
set(gca, 'TickLabelInterpreter', 'latex', 'FontSize', 22);

% ===== Current =====
nexttile;
plot(out.tout, out.current, 'Color', [0.8, 0.1, 0.1], 'LineWidth', 2.5);
grid off;
ylabel('Current (A)', 'Interpreter', 'latex', 'FontSize', 22);
% title('\textbf{Motor Current}', 'Interpreter', 'latex', 'FontSize', 20);
set(gca, 'TickLabelInterpreter', 'latex', 'FontSize', 22);

% ===== RPM =====
nexttile;
plot(out.tout, out.RPM, 'Color', [0.1, 0.6, 0.1], 'LineWidth', 2.5);
grid off;
ylabel('RPM', 'Interpreter', 'latex', 'FontSize', 22);
xlabel('$t$ (s)', 'Interpreter', 'latex', 'FontSize', 22);
% title('\textbf{Motor Speed}', 'Interpreter', 'latex', 'FontSize', 20);
set(gca, 'TickLabelInterpreter', 'latex', 'FontSize', 22);



%% ===== Position Tracking =====
figure;
set(gcf, 'Position', [100, 100, 900, 800]);
tiledlayout(1, 1, 'Padding', 'compact', 'TileSpacing', 'compact');

nexttile;
plot(out.tout, out.des_position, '--r', 'LineWidth', 2.5); hold on;
plot(out.tout, out.position, 'b', 'LineWidth', 2.5);
grid off;

legend({'Desired Position', 'Actual Position'}, 'Interpreter', 'latex', ...
       'FontSize', 22, 'Location', 'northwest');
xlabel('$t$ (s)', 'Interpreter', 'latex', 'FontSize', 22);
ylabel('Ball Screw Position (mm)', 'Interpreter', 'latex', 'FontSize', 22);
% title('\textbf{Position Tracking Response}', ...
      % 'Interpreter', 'latex', 'FontSize', 20);
set(gca, 'TickLabelInterpreter', 'latex', 'FontSize', 22);

%% ===== Position vs Voltage =====
figure;
set(gcf, 'Position', [100, 100, 900, 800]);
tiledlayout(1, 1, 'Padding', 'compact', 'TileSpacing', 'compact');

nexttile;
plot(out.position, out.voltage, 'Color', [0.3, 0.4, 0.8], 'LineWidth', 2.5);
grid off;
xlabel('Ball Screw Position (mm)', 'Interpreter', 'latex', 'FontSize', 22);
ylabel('Voltage (V)', 'Interpreter', 'latex', 'FontSize', 22);
% title('\textbf{Position vs Voltage}', 'Interpreter', 'latex', 'FontSize', 20);
set(gca, 'TickLabelInterpreter', 'latex', 'FontSize', 22);




