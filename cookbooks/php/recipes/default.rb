package "libapache2-mod-php5"

bash "enable php" do
code <<-EOH
a2enmod php5
EOH
end

