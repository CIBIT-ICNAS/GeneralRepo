%% Provide URL to HTML file
url_string = 'file:///<...>.html';

%% Provide the number of the table (1-based)
% For RFX-ROI_GLM, the contrast table is number 4.
nr_table = 4;

%% Extract table from html
out_table = getTableFromWeb_mod(url_string, nr_table);

%% Retrieve specific values only
out_matrix = out_table(2:12,3:6);

% Convert to num and transpose for convenience
out_matrix_num = cellfun(@str2num,out_matrix)';