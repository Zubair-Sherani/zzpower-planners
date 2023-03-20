module.exports = {
    src_folders: ['features/step_definitions'],

    test_runner: {
        // set cucumber as the runner
        type: 'cucumber',

        // define cucumber specific options  
        options: {
            //set the feature path
            feature_path: '*/*.feature',

            // start the webdriver session automatically (enabled by default)
            auto_start_session: true,

            // use parallel execution in Cucumber  
            parallel: 2 // set number of workers to use (can also be defined in the cli as --parallel 2
        }
    },

    test_settings: {
        default: {
            desiredCapabilities: { browserName: 'chrome' },
            webdriver: { start_process: true },
        },
    }
};