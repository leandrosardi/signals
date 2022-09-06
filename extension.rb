BlackStack::Extensions::add ({
    # descriptive name and descriptor
    :name => 'Signals',
    :description => 'Find leads who are close to making a purchase..',

    # setup the url of the repository for installation and updates
    :repo_url => 'https://github.com/leandrosardi/signals',
    :repo_branch => 'main',

    # define version with format <mayor>.<minor>.<revision>
    :version => '0.0.1',

    # define the name of the author
    :author => 'leandrosardi',

    # what is the section to add this extension in either the top-bar, the footer, the dashboard.
    :services_section => 'Services for Marketers',
    # show this extension as a service in the top bar?
    :show_in_top_bar => true,
    # show this extension as a service in the footer?
    :show_in_footer => true,
    # show this extension as a service in the dashboard?
    :show_in_dashboard => true,

    # what are the screens to add in the leftbar
    :leftbar_icons => [
        { :label => 'results', :icon => :search, :screen => :results, },
        { :label => 'exports', :icon => :'cloud-download', :screen => :exports, },
        { :label => 'searches', :icon => :'save', :screen => :'searches', },
    ],
 
    # add a folder to the storage from where user can download the exports.
    :storage_folders => [
        { :name => 'signals.exports', },
    ],
=begin
    # deployment routines
    :deployment_routines => [{
        :name => 'start-export-process',
        :commands => [{ 
            # back up old configuration file
            # setup new configuration file
            :command => "
                source /home/%ssh_username%/.rvm/scripts/rvm; rvm install 3.1.2; rvm --default use 3.1.2;
                cd /home/%ssh_username%/code/mysaas/extensions/leads/p; 
                export RUBYLIB=/home/%ssh_username%/code/mysaas;
                nohup ruby export.rb;
            ",
            :sudo => false,
            :background => true,
        }, {
            # back up old configuration file
            # setup new configuration file
            :command => "
                source /home/%ssh_username%/.rvm/scripts/rvm; rvm install 3.1.2; rvm --default use 3.1.2;
                cd /home/%ssh_username%/code/mysaas/extensions/leads/p; 
                export RUBYLIB=/home/%ssh_username%/code/mysaas;
                nohup ruby stat.search.rb;
            ",
            :sudo => false,
            :background => true,
        }],
    }],
=end
})