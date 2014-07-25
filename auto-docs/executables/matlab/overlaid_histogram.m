signin('TestBot', 'r1neazxo9w')

x0 = randn(500,1);
x1 = randn(500,1)+1;
trace1 = struct(...
  'x', x0, ...
  'opacity', 0.75, ...
  'type', 'histogram');
trace2 = struct(...
  'x', x1, ...
  'opacity', 0.75, ...
  'type', 'histogram');
data = {trace1, trace2};
layout = struct('barmode', 'overlay');

response = plotly(data, struct('layout', layout, 'filename', 'overlaid-histogram', 'fileopt', 'overwrite', 'auto_open', false));
plot_url = response.url