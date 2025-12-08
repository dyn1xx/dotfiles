// TODO:
//  - Dark Theme
//  - Search Engine
//  - Disable "Use AI to suggest tabs and a name for tab groups"
//  - Disable "Firefox View button"
//  - Disable "Suggestions from sponsors"
//  - Disable "Show sidebar"

// Hide bookmarks toolbar
user_pref("browser.toolbars.bookmarks.visibility", "never");

// Allow userChrome.css customizations
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Open previous windows and tabs
user_pref("browser.startup.page", 3);

// Enable autoscroll
user_pref("general.autoScroll", true);

// Play DRM-controlled content
user_pref("media.eme.enabled", true);
user_pref("media.gmp-manager.updateEnabled", true);

// Don't delete cookies and site data on close
user_pref("network.cookie.lifetimePolicy", 0);
user_pref("privacy.clearOnShutdown.cookies", false);
user_pref("privacy.clearOnShutdown.offlineApps", false);
user_pref("privacy.clearOnShutdown.cache", false);
user_pref("privacy.clearOnShutdown.sessions", false);
user_pref("privacy.clearOnShutdown.siteSettings", false);

// Don't clear history when LibreWolf closes
user_pref("privacy.sanitize.sanitizeOnShutdown", false);
user_pref("privacy.clearOnShutdown.history", false);

// Homepage
user_pref("browser.startup.homepage", "http://192.168.1.4:3000");

// New windows + new tabs use homepage
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.newtab.url", "http://192.168.1.4:3000");
user_pref("browser.newtabpage.pinned", "[]");
user_pref("browser.newtabpage.activity-stream.enabled", false);

// Make "Home" button go to your custom homepage
user_pref("browser.startup.homepage_override.mstone", "ignore");

// Set default download directory
user_pref("browser.download.dir", "/home/v/downloads/");
user_pref("browser.download.lastDir", "/home/v/downloads/");
user_pref("browser.download.folderList", 2);

// Show search suggestions in the URL bar
user_pref("browser.search.suggest.enabled", true);
user_pref("browser.urlbar.suggest.searches", true);

// Show search suggestions in the search bar (if enabled)
user_pref("browser.search.suggest.enabled.private", true);

// Allow suggestions even in private browsing windows
user_pref("browser.urlbar.groupLabels.enabled", true);
user_pref("browser.urlbar.showSearchSuggestionsFirst", true);

// Disable translation prompts
user_pref("browser.translations.enable", true);
user_pref("browser.translations.automaticallyPopup", false);
user_pref("browser.translations.automaticallyOfferTranslations", false);
user_pref("browser.translations.panelShown", false);

// Disable Firefox Sync completely
user_pref("identity.fxaccounts.enabled", false);

// Disable synced tabs (this removes “recent browsing across windows and devices”)
user_pref("services.sync.engine.tabs", false);
user_pref("services.sync.declinedEngines", "tabs");
user_pref("services.sync.enabled", false);

// Hide Sync UI
user_pref("browser.tabs.remote.autostart", true); // required for some UI elements
user_pref("browser.profiles.enabled", false);     // hides FXA-dependent UI

// Disable AI tab grouping suggestions (Firefox 131+)
user_pref("browser.tabs.groups.aiSuggestions", false);
user_pref("browser.tabs.groups.ai_suggestions", false);  // legacy key in some builds

// Set DuckDuckGo as default search engine
user_pref("browser.search.defaultenginename", "DuckDuckGo");
user_pref("browser.search.order.1", "DuckDuckGo");
user_pref("browser.urlbar.placeholderName", "DuckDuckGo");

user_pref("browser.search.defaultenginename.private", "DuckDuckGo");
user_pref("browser.search.selectedEngine", "DuckDuckGo");

user_pref("browser.search.region", "US");    // ensures DDG appears in list
user_pref("browser.search.separatePrivateDefault", false);

// Enable Global Privacy Control (GPC)
user_pref("privacy.globalprivacycontrol.enabled", true);
user_pref("privacy.globalprivacycontrol.functionality.enabled", true);

// Disable "Ask to save passwords"
user_pref("signon.rememberSignons", false);

// Also disable all password manager features (recommended)
user_pref("signon.autofillForms", false);
user_pref("signon.autofillForms.http", false);
user_pref("signon.generation.enabled", false);
user_pref("signon.management.page.breach-alerts.enabled", false);
user_pref("signon.formlessCapture.enabled", false);

// Disable saving credit/debit cards
user_pref("browser.formfill.enable", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);

// Disable saving addresses
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.available", false);

// Disable telemetry and data collection
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.server", "");
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);

// Disable health report and studies
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("browser.experiments.enabled", false);
user_pref("experiments.supported", false);

// Disable Normandy / remote settings
user_pref("services.settings.server", "");
user_pref("services.settings.main.cfr-fxa.enabled", false);
user_pref("services.sync.enabled", false);
user_pref("identity.fxaccounts.enabled", false);
