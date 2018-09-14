//
// Created by origamidance on 12/21/17.
//

#include "cinder/app/App.h"
#include "cinder/app/RendererGl.h"
#include "cinder/gl/gl.h"
#include "cinder/Color.h"
#include "cinder/PolyLine.h"
#include "cinder/Log.h"
#include "cinder/Rand.h"
#include "CinderImGui.h"
#include "CinderNanoVG.h"

using namespace ci;
using namespace ci::app;
using namespace std;
namespace ui=ImGui;

void prepareSettings(App::Settings *settings) {
  settings->setWindowSize(1024, 768);
  settings->setHighDensityDisplayEnabled();
  settings->setMultiTouchEnabled(false);
//  settings->disableFrameRate();
}

class CinderEllaApp : public App {
public:
  void setup();
  void update();
  void mouseDown(MouseEvent event);
  void mouseDrag(MouseEvent event);
  void draw();
  void initUI();
  void drawUI();
};
void CinderEllaApp::setup() {
  initUI();
}
void CinderEllaApp::update() {
}
void CinderEllaApp::mouseDown(MouseEvent event) {
  CI_LOG_I("Mouse click at: "<<event.getPos());
}
void CinderEllaApp::mouseDrag(MouseEvent event) {
  CI_LOG_I("Mouse drag at: "<<event.getPos());
}
void CinderEllaApp::draw() {
  gl::clear();
  drawUI();
}
void CinderEllaApp::initUI() {
  ui::initialize();
  //ui::initialize(ui::Options().font( getAssetPath( "consya.ttf" ), 20).fontGlyphRanges("consya",ui::GetIO().Fonts->GetGlyphRangesJapanese()));

  // vector<ImWchar> ChineseGlyphRanges;
  //   for (const ImWchar *range = ui::GetIO().Fonts->GetGlyphRangesChinese(); range[0] && range[1]; range += 2) {
  //     ChineseGlyphRanges.push_back(range[0]);
  //     ChineseGlyphRanges.push_back(range[1]);
  //   }
  // ChineseGlyphRanges.push_back(0);
  // ui::initialize( ui::Options()
  //                     .fonts( {
  //                                 { getAssetPath( "sourcehan.otf" ), 15 }
  //                             } ).fontGlyphRanges( "sourcehan",ChineseGlyphRanges
  //                 )
  // );
  // const ImWchar *test=ui::GetIO().Fonts->GetGlyphRangesChinese();
  // CI_LOG_I("range="<<ui::GetIO().Fonts->GetGlyphRangesChinese());
//  ImFont* font=ui::GetIO().Fonts->AddFontFromFileTTF("/home/origamidance/Playground/CinderElla/assets/DroidSans.ttf",30.0f);
//  IM_ASSERT(font!=NULL);
}
void CinderEllaApp::drawUI() {
  //ui::ScopedFont font("DroidSans");
  gl::ScopedBlendPremult blend;
  ui::ScopedWindow mainMenu("main menu", ImGuiWindowFlags_AlwaysAutoResize);
  ui::ShowTestWindow();
  //{
  //  ui::ScopedFont font("Roboto-Regular");
  //  ui::Text("fps=%f", getAverageFps());

  //}
  //{
  //  ui::ScopedFont font1("DroidSans");
  //  ui::Text("fps=%f", getAverageFps());

  //}
  //ui::Text(u8"哈哈哈");
//  ui::Text(std::to_string(getAverageFps()).c_str());
  // float test=0.1;
  // ui::DragFloat("hah",&test);
  // ui::ShowTestWindow();
}

CINDER_APP(CinderEllaApp,RendererGl(RendererGl::Options().msaa(16)),prepareSettings)
