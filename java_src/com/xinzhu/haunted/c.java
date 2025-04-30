package com.xinzhu.haunted;

import com.google.auto.service.AutoService;
import com.xinzhu.overmind.annotation.Haunted;
import com.xinzhu.overmind.annotation.HauntedString;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.processing.AbstractProcessor;
import javax.annotation.processing.Filer;
import javax.annotation.processing.ProcessingEnvironment;
import javax.annotation.processing.Processor;
import javax.annotation.processing.RoundEnvironment;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.TypeElement;
/* compiled from: HauntedProcessor.java */
@AutoService({Processor.class})
/* loaded from: classes3.dex */
public class c extends AbstractProcessor {

    /* renamed from: a  reason: collision with root package name */
    private Filer f63677a;

    public Set<String> a() {
        HashSet hashSet = new HashSet();
        hashSet.add(Haunted.class.getCanonicalName());
        hashSet.add(HauntedString.class.getCanonicalName());
        return hashSet;
    }

    public SourceVersion b() {
        return SourceVersion.latestSupported();
    }

    public synchronized void c(ProcessingEnvironment processingEnvironment) {
        super.init(processingEnvironment);
        this.f63677a = processingEnvironment.getFiler();
        a.d(processingEnvironment.getMessager());
    }

    public boolean d(Set<? extends TypeElement> set, RoundEnvironment roundEnvironment) {
        a.c("annotations size--->" + set.size());
        Set<Element> rootElements = roundEnvironment.getRootElements();
        if (rootElements.isEmpty()) {
            a.c("Empty root element.");
            return false;
        }
        a.c("allElements " + rootElements.size());
        for (Element element : rootElements) {
            Haunted haunted = (Haunted) element.getAnnotation(Haunted.class);
            HauntedString hauntedString = (HauntedString) element.getAnnotation(HauntedString.class);
            if (haunted != null || hauntedString != null) {
                try {
                    new HauntedWriter(HauntedScanner.k(element)).e().writeTo(this.f63677a);
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
        }
        return true;
    }
}
