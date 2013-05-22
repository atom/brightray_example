#import "browser/mac/window_mac.h"

#import "browser/mac/window_controller.h"

namespace brightray_example {

Window* Window::Create(brightray::BrowserContext* browser_context) {
  // controller will clean itself up when its window is closed, but the static analyzer doesn't know
  // that.
#ifndef __clang_analyzer__
  auto controller = [[WindowController alloc] initWithBrowserContext:browser_context];
  return controller.wrapperWindow;
#endif
}

WindowMac::WindowMac(brightray::BrowserContext* browser_context, WindowController* controller)
  : Window(browser_context),
    controller_(controller) {
}

WindowMac::~WindowMac() {
}

void WindowMac::Show() {
  // -showWindow: can call -autorelease, so we'd better have a pool in place.
  @autoreleasepool {
    [controller_ showWindow:nil];
  }
}

}
