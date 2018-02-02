//
// Created by origamidance on 2/2/18.
//

#ifndef CINDERELLAAPP_GRAPH_H
#define CINDERELLAAPP_GRAPH_H
#include <Eigen/Dense>
#include <CinderNanoVG.h>
#include <cinder/Log.h>

struct GraphVisScheme{
  ci::Color nodeColor=ci::Color("orangered");
  ci::Color edgeColor=ci::Color("dodgerblue");
  float nodeRadius=5.0f;
  float edgeWidth=2.0f;
};


class Graph {
public:
  /// Graph class
  /// \param aPositions positions of nodes
  /// \param aEdges edges
  /// \param aLengths lengths of edges
  Graph(Eigen::MatrixXf aPositions, Eigen::MatrixXi aEdges, Eigen::VectorXf aLengths):mPositions(aPositions),mEdges(aEdges),mLengths(aLengths){}
  const Eigen::MatrixXf &getPositions() const {
    return mPositions;
  }
  void setPositions(const Eigen::MatrixXf &aPositions) {
    CI_LOG_I("assignemnt start2");
    mPositions=aPositions;
  }
  const Eigen::MatrixXi &getEdges() const {
    return mEdges;
  }
  void setEdges(const Eigen::MatrixXi &aEdges) {
    mEdges=aEdges;
  }
  const Eigen::VectorXf &getLengths() const {
    return mLengths;
  }
  void setLengths(const Eigen::VectorXf &aLengths) {
    mLengths=aLengths;
  }
  void setScheme(const GraphVisScheme &aScheme){
    mScheme=aScheme;
  }
  const GraphVisScheme &getScheme() const{
    return mScheme;
  }

  /// Drawing graph using NanoVG
  /// \param nVG NanoVG context
  void drawGraph(std::shared_ptr<ci::nvg::Context> nVG) const;
private:
  Eigen::MatrixXf mPositions;
  Eigen::MatrixXi mEdges;
  Eigen::VectorXf mLengths;
  GraphVisScheme mScheme;

};

#endif //CINDERELLAAPP_GRAPH_H

