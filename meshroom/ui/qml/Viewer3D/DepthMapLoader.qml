import DepthMapEntity 2.0

/**
 * Support for Depth Map files (EXR) in Qt3d.
 * Create this component dynamically to test for DepthMapEntity plugin availability.
 */
DepthMapEntity {
    id: root

    pointSize: Viewer3DSettings.pointSize * (Viewer3DSettings.fixedPointSize ? 1.0 : 0.001)
    // map render modes to custom visualization modes
    displayMode: Viewer3DSettings.renderMode == 1 ? DepthMapEntity.Points : DepthMapEntity.Triangles
    displayColor: Viewer3DSettings.renderMode == 2
}
