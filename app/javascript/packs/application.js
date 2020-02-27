import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';
import { loadDynamicLoginText } from '../components/login';
// loadDynamicBannerText();
window.loadDynamicLoginText = loadDynamicLoginText;
window.loadDynamicLoginText();

window.loadDynamicBannerText = loadDynamicBannerText;
window.loadDynamicBannerText();


