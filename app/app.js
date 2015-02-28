// Run this when the app launches
chrome.app.runtime.onLaunched.addListener(function () {
  
  // Create a window when the app launches
  chrome.app.window.create("window.html", {
    id: "Homestuck",
    innerBounds: {
      width   :400,
      height  :400,
      minWidth:400,
      maxWidth:400
    }
  });
  
});
