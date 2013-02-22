#ifndef GLWIDGET_H
#define GLWIDGET_H

#include <QGLWidget>

#include <QOpenGLBuffer>
#include <QOpenGLShaderProgram>

class GLWidget : public QGLWidget
{
    Q_OBJECT
public:
    GLWidget( const QGLFormat& format, QWidget* parent = 0 );

protected:
    virtual void initializeGL();
    virtual void resizeGL( int w, int h );
    virtual void paintGL();

    virtual void keyPressEvent( QKeyEvent* e );

private:
    bool prepareShaderProgram( const QString& vertexShaderPath,
                               const QString& geometryShaderPath,
                               const QString& fragmentShaderPath );

    QOpenGLShaderProgram m_shader;
    QOpenGLBuffer m_vertexBuffer;
};

#endif // GLWIDGET_H
