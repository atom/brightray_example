#ifndef BRIGHTRAY_EXAMPLE_BROWSER_BROWSER_MAIN_PARTS_H_
#define BRIGHTRAY_EXAMPLE_BROWSER_BROWSER_MAIN_PARTS_H_

#include "brightray/browser/browser_main_parts.h"

namespace brightray_example {

class BrowserMainParts : public brightray::BrowserMainParts {
public:
  BrowserMainParts();
  ~BrowserMainParts();

protected:
  virtual void PreMainMessageLoopRun() OVERRIDE;

  DISALLOW_COPY_AND_ASSIGN(BrowserMainParts);
};

}

#endif
