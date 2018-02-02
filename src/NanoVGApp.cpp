#include "cinder/app/App.h"
#include "cinder/app/RendererGl.h"
#include "cinder/gl/gl.h"

#include "cinder/Color.h"
#include "cinder/PolyLine.h"

#include "ci_nanovg_gl.hpp"
#include "CinderImGui.h"
#include "cinder/Log.h"
#include "cinder/Rand.h"

using namespace ci;
using namespace ci::app;
using namespace std;
namespace ui=ImGui;

class Flower {
public:
  Flower(vec2 loc, float radius, float petalOutsideRadius, float petalInsideRadius, int numPetals, ColorA color) : mLoc(
      loc), mRadius(radius), mPetalOutsideRadius(petalOutsideRadius), mPetalInsideRadius(petalInsideRadius), mNumPetals(
      numPetals), mColor(color) {};
  void makePath(std::shared_ptr<nvg::Context> nVG) const {
//    nVG->save();
    for (int petal = 0; petal < mNumPetals; ++petal) {
//      nVG->beginPath();
      float petalAngle = (petal / (float) mNumPetals) * 2 * M_PI;
      vec2 outsideCircleCenter = mLoc + vec2(1, 0) * (float) cos(petalAngle) * mRadius +
          vec2(0, 1) * (float) sin(petalAngle) * mRadius;
      vec2 insideCircleCenter = mLoc + vec2(1, 0) * (float) cos(petalAngle) * mPetalInsideRadius +
          vec2(0, 1) * (float) sin(petalAngle) * mPetalInsideRadius;
      nVG->arc(outsideCircleCenter, mPetalOutsideRadius, petalAngle + M_PI / 2 + M_PI, petalAngle + M_PI / 2, NVG_CW);
      nVG->arc(insideCircleCenter, mPetalInsideRadius, petalAngle + M_PI / 2, petalAngle + M_PI / 2 + M_PI, NVG_CW);
//      nVG->closePath();
//      nVG->fillColor(mColor);
//      nVG->fill();
    }
//    nVG->restore();
//    nVG->save();
//    nVG->translate(mLoc);
//    {
//      for (int n = 64, i = 0; i < n; ++i) {
//        float u1 = (float) i / (float) n;
//        float u2 = (float) (i + 1) / (float) n;
//        float t1 = u1 * M_PI * 2.0f;
//        float t2 = u2 * M_PI * 2.0f;
//        float r1 = 50.0f;
//        float r2 = 50.0f;
//        nVG->beginPath();
//        nVG->moveTo(0, 0);
//        nVG->lineTo(cosf(t1) * r1, sinf(t1) * r1);
//        nVG->lineTo(cosf(t2) * r2, sinf(t2) * r2);
//        nVG->closePath();
//        nVG->fillColor(ColorAf{CM_HSV, u1, 1.0f, 1.0f});
//        nVG->fill();
//      }
//    }
//    nVG->restore();
  }
  void draw(std::shared_ptr<nvg::Context> nVG) const {
    nVG->save();
    nVG->beginPath();
    makePath(nVG);
    nVG->fillColor(mColor);
    nVG->fill();
    nVG->closePath();
    nVG->restore();

    nVG->save();
    nVG->beginPath();
    makePath(nVG);
    nVG->strokeWidth(10);
    nVG->strokeColor(mColor * 0.8f);
    nVG->stroke();
    nVG->closePath();
    nVG->restore();
//    nVG->fillColor(mColor);
//    nVG->fill();
//    makePath(nVG);
//    nVG->strokeColor(mColor*0.8f);
//    nVG->stroke();

  }

private:
  vec2 mLoc;
  float mRadius, mPetalOutsideRadius, mPetalInsideRadius;
  int mNumPetals;
  ColorA mColor;
};
class HelloWorldApp : public App {
public:
  void setup();
  void update();
  void mouseDown(MouseEvent event);
  void mouseDrag(MouseEvent event);
  void draw();
  void drawUI();
  void renderScene();
public:
  vector<Flower> mFlowers;
private:
  std::shared_ptr<nvg::Context> mNanoVG;
  PolyLine2f mTriangle;
};

void HelloWorldApp::setup() {
  // We return a value from nvg::createContextGL() in order to remain
  // agnostic to how your app is managing memory. Most of the time you'll want
  // to either store this value or create a unique/shared_ptr. A unique_ptr
  // would be more appropriate here, but we're using make_shared for brevity.
//  ui::initialize(ui::Options().fonts({
//                                         {getAssetPath("ProggyClean.ttf"), 20},
//                                         {getAssetPath("Roboto-Regular.ttf"), 20},
//                                         {getAssetPath("sourcehan.ttf"), 18}
//                                     }).fontGlyphRanges("sourcehan",{ 0xf000, 0xf06e, 0 }
//                                                        ));
  mNanoVG = std::make_shared<nvg::Context>(nvg::createContextGL());

  // Load a font
  mNanoVG->createFont("roboto", getAssetPath("Roboto-Regular.ttf").string());

  // Create triangle PolyLine
  int numPts = 3;
  for (size_t i = 0; i < numPts; ++i) {
    float u = static_cast<float>(i) / static_cast<float>(numPts);
    float t = u * M_PI * 2.0f;
    mTriangle.push_back({cosf(t), sinf(t)});
  }
  mTriangle.setClosed();

  ui::initialize(ui::Options().font( "/home/origamidance/Playground/CinderElla/assets/ProggyTiny.ttf", 12 ));
}

void HelloWorldApp::update() {
}

void HelloWorldApp::draw() {
  gl::clear(Color(0, 0, 0));

  // Store a reference so we can use dot-notation.
  auto &vg = *mNanoVG;

  auto time = getElapsedSeconds();

  vg.beginFrame(getWindowSize(), getWindowContentScale());

  // Draw Hue Wheel
//  vg.save();
//  {
//    vg.translate(getWindowCenter());
//    float sc = 1.0f + sinf(time * 4.0f) * 0.5f;
//    vg.scale(sc, sc);
//    vg.rotate(time);
//    for (int n = 64, i = 0; i < n; ++i) {
//      float u1 = (float) i / (float) n;
//      float u2 = (float) (i + 1) / (float) n;
//      float t1 = u1 * M_PI * 2.0f;
//      float t2 = u2 * M_PI * 2.0f;
//      float r1 = 200.0f + sinf(u1 * M_PI * 12.0f + time * 16.0f) * 25.0f;
//      float r2 = 200.0f + sinf(u2 * M_PI * 12.0f + time * 16.0f) * 25.0f;
//      vg.beginPath();
//      vg.moveTo(0, 0);
//      vg.lineTo(cosf(t1) * r1, sinf(t1) * r1);
//      vg.lineTo(cosf(t2) * r2, sinf(t2) * r2);
//      vg.closePath();
//      vg.fillColor(ColorAf{CM_HSV, u1, 1.0f, 1.0f});
//      vg.fill();
//    }
//  }
//  vg.restore();
//
//  // Draw Triangle
//  vg.save();
//  {
//    vg.rotate(-time);
//    float r = 100.0f - sinf(time * 4.0f) * 40.0f;
//    vg.scale(r, r);
//    vg.beginPath();
//    vg.polyLine(mTriangle);
//    vg.strokeWidth(10 / r);
//    vg.strokeColor(ColorAf{1.0f, 1.0f, 1.0f, 0.75f});
//    vg.stroke();
//  }
//  vg.restore();
//
//  // Draw Arc
//  {
//    float r = 200.0f;
//    vg.beginPath();
//    vg.arc(0, 0, r, -M_PI * 0.5f, fmod(time, M_PI * 2.0f) - M_PI * 0.5f, NVG_CW);
//    vg.circle(100,100,50);
//    vg.strokeColor(ColorAf{1.0f, 1.0f, 1.0f});
//    vg.strokeWidth(2);
//    vg.stroke();
//  }
//
//  // Draw Text
//  vg.fontSize(50);
//  vg.fontFace("roboto");
//  vg.textAlign(NVG_ALIGN_CENTER | NVG_ALIGN_MIDDLE);
//  vg.textLetterSpacing(-4.0);
//  vg.fillColor(ColorAf{0.0f, 0.0f, 0.0f});
//  vg.text(0, 0, "hello, world");

  renderScene();
  vg.endFrame();
  drawUI();
}
void HelloWorldApp::drawUI() {
  {
    gl::ScopedBlendPremult blend;
    ui::ScopedWindow mainMenu("main menu", ImGuiWindowFlags_AlwaysAutoResize);
    ui::Text("fps=%f", getAverageFps());
    ui::ShowTestWindow();
  }
}
void HelloWorldApp::renderScene() {
  for (vector<Flower>::const_iterator flIt = mFlowers.begin(); flIt != mFlowers.end(); ++flIt) {
    flIt->draw(mNanoVG);
  }
}
void HelloWorldApp::mouseDown(MouseEvent event) {
  float radius = randFloat(60, 90);
  int numPetals = randInt(6, 50);
  float outerRadius = (2 * M_PI * radius) / numPetals / 2 * randFloat(0.9f, 1.0f);
  float innerRadius = outerRadius * randFloat(0.2f, 0.4f);
  mFlowers.push_back(Flower(event.getPos(),
                            radius,
                            outerRadius,
                            innerRadius,
                            numPetals,
                            ColorA(CM_HSV, randFloat(), 1, 1, 1.0f)));

}
void HelloWorldApp::mouseDrag(MouseEvent event) {
  float radius = randFloat(60, 90);
  int numPetals = randInt(6, 50);
  float outerRadius = (2 * M_PI * radius) / numPetals / 2 * randFloat(0.9f, 1.0f);
  float innerRadius = outerRadius * randFloat(0.2f, 0.4f);
  mFlowers.push_back(Flower(event.getPos(),
                            radius,
                            outerRadius,
                            innerRadius,
                            numPetals,
                            ColorA(CM_HSV, randFloat(), 1, 1, 0.65f)));
}

// NanoVG requires a stencil buffer in the main framebuffer and performs it's
// own anti-aliasing by default. We disable opengl's AA and enable stencil here
// to allow for this.
CINDER_APP(HelloWorldApp, RendererGl);
//CINDER_APP(HelloWorldApp, RendererGl(RendererGl::Options().stencil().msaa(0)),
//           [](App::Settings *settings) { settings->setHighDensityDisplayEnabled(); })
