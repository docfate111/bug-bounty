On the 7th call to repaintRequested
c 6 with breakpoint at repaintRequested
```
phantomjs/phantomjs_autogen/UVLADIE3JM/moc_webpage.cpp
   906 
   907 // SIGNAL 14
   908 void WebPage::repaintRequested(const int _t1, const int _t2, const int _t3, const int _t4)
   909 {
   910     void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)) };
 ► 911     QMetaObject::activate(this, &staticMetaObject, 14, _a);
```

QMetaObject::activate(

this -> WebPage * const 0x555555961cf0
&staticMetaObject -> address of object
			 superdata = 0x7ffff41aa980 <QObject::staticMetaObject>,
			stringdata = 0x5555555cad40 <qt_meta_stringdata_WebPage>, 
			 data = 0x5555555cc180 <qt_meta_data_WebPage>,
			static_metacall = 0x5555555731e4 <WebPage::qt_static_metacall(QObject*, QMetaObject::Call
			 relatedMetaObjects = 0x0,  
			extradata = 0x0

_a is an array {0x0, 0x7fffffffdaa4, 0x7fffffffdaa0, 0x7fffffffda9c, 0x7fffffffda98}


QMetaObjectPrivate::signalOffset(QMetaObject const*)

0x00007ffff3d30e50 in QMutex::lock() () from /lib/x86_64-linux-gnu/libQt5Core.so.5 

0x00007ffff3d30ed9 in QMutex::unlock()

0x00007ffff3d30e99 in QBasicMutex::unlockInternal() () from /lib/x86_64-linux-gnu/libQt5Core.so.5

0x00007ffff3f016a9 in QMetaObject::metacall(QObject*, QMetaObject::Call, int, void**) 

0x00007ffff3f02870 in QMetaObject::method(int) const ()

0x00007ffff3f01887 in QMetaObject::methodOffset() const ()

0x00007ffff3f02885 in QMetaObject::method(int) const () from /lib/x86_64-linux-gnu/libQt5Core.so.5 
Then some debugging files are called to print out functions called

It seems like the issues are in  libQt5WebKit
