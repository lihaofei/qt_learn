#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>
#include "myobject.h"
#include <QObject>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext * context = engine.rootContext();
    QScreen * screen = QGuiApplication::primaryScreen();
    QRect rect = screen->virtualGeometry();

//    context->setContextProperty("MyObject",MyObject::getInstance());
    qmlRegisterType<MyObject>("MyObj",1,0,"MyObject");
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    //engine加载完成后 load后
    auto list =  engine.rootObjects();
    auto window = list.first();
//    auto objName = list.first()->findChild<QObject *>("mybutton");
//    qDebug()<< objName;
    QObject::connect(window,SIGNAL(qmlSig(int,QString)),MyObject::getInstance(),SLOT(cppSlot(int,QString)));
    return app.exec();
}
