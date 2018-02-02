//
// Created by origamidance on 2/2/18.
//

#include "Graph.h"
void Graph::drawGraph(std::shared_ptr<ci::nvg::Context> nVG) const {
  nVG->save();
  nVG->beginPath();
  for (int i = 0; i <mPositions.rows() ; ++i) {
    nVG->circle(mPositions(i,0),mPositions(i,1),mScheme.nodeRadius);
  }
  nVG->fillColor(mScheme.nodeColor);
  nVG->fill();
  CI_LOG_I("edge amount="<<mEdges.rows());
  for (int i = 0; i <mEdges.rows() ; ++i) {
    nVG->beginPath();
//    nVG->moveTo(0,0);
//    nVG->lineTo(1000,1000);
//    CI_LOG_I(i<<" "<<mEdges(i,1));
    nVG->moveTo(mPositions(mEdges(i,0),0),mPositions(mEdges(i,0),1));
    nVG->lineTo(mPositions(mEdges(i,1),0),mPositions(mEdges(i,1),1));
    nVG->closePath();
  }
  nVG->fillColor(mScheme.edgeColor);
  nVG->fill();
  nVG->restore();
/// draw nodes
}
