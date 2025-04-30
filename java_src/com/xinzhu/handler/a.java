package com.xinzhu.handler;

import com.google.auto.service.AutoService;
import com.join.mgps.Util.g0;
import com.squareup.javapoet.ClassName;
import com.squareup.javapoet.JavaFile;
import com.squareup.javapoet.MethodSpec;
import com.squareup.javapoet.TypeSpec;
import com.xinzhu.overmind.annotation.HandlerClass;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.processing.AbstractProcessor;
import javax.annotation.processing.Filer;
import javax.annotation.processing.ProcessingEnvironment;
import javax.annotation.processing.Processor;
import javax.annotation.processing.RoundEnvironment;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.TypeElement;
/* compiled from: HandlerProcessor.java */
@AutoService({Processor.class})
/* loaded from: classes3.dex */
public class a extends AbstractProcessor {

    /* renamed from: a  reason: collision with root package name */
    private Filer f62322a;

    /* renamed from: b  reason: collision with root package name */
    private Set<Element> f62323b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    String f62324c;

    /* renamed from: d  reason: collision with root package name */
    String f62325d;

    private TypeSpec a() {
        if (this.f62325d.endsWith("Base")) {
            String str = this.f62325d;
            TypeSpec.Builder classBuilder = TypeSpec.classBuilder(str.substring(0, str.length() - 4));
            TypeSpec.Builder addModifiers = classBuilder.superclass(ClassName.bestGuess(this.f62324c + g0.f27568a + this.f62325d)).addModifiers(new Modifier[]{Modifier.PUBLIC});
            MethodSpec.Builder addModifiers2 = MethodSpec.methodBuilder("addAllHandlers").addModifiers(new Modifier[]{Modifier.PROTECTED});
            Iterator<Element> it2 = this.f62323b.iterator();
            while (it2.hasNext()) {
                addModifiers2.addStatement("addHandler(new $T())", new Object[]{it2.next().asType()});
            }
            addModifiers.addMethod(addModifiers2.build());
            return addModifiers.build();
        }
        throw new RuntimeException("Handler class must end with Base! " + this.f62325d);
    }

    private void e(Element element) {
        Element element2 = element;
        while (element2.getKind() != ElementKind.PACKAGE) {
            element2 = element2.getEnclosingElement();
        }
        this.f62324c = ((PackageElement) element2).getQualifiedName().toString();
        this.f62325d = element.getSimpleName().toString();
        for (Element element3 : element.getEnclosedElements()) {
            if (element3 instanceof TypeElement) {
                this.f62323b.add(element3);
            }
        }
    }

    public Set<String> b() {
        HashSet hashSet = new HashSet();
        hashSet.add(HandlerClass.class.getCanonicalName());
        return hashSet;
    }

    public SourceVersion c() {
        return SourceVersion.latestSupported();
    }

    public synchronized void d(ProcessingEnvironment processingEnvironment) {
        super.init(processingEnvironment);
        this.f62322a = processingEnvironment.getFiler();
        com.xinzhu.haunted.a.d(processingEnvironment.getMessager());
    }

    public boolean f(Set<? extends TypeElement> set, RoundEnvironment roundEnvironment) {
        com.xinzhu.haunted.a.c("annotations size--->" + set.size());
        Set<Element> elementsAnnotatedWith = roundEnvironment.getElementsAnnotatedWith(HandlerClass.class);
        if (elementsAnnotatedWith.isEmpty()) {
            com.xinzhu.haunted.a.c("Empty root element.");
            return false;
        }
        for (Element element : elementsAnnotatedWith) {
            this.f62323b.clear();
            e(element);
            try {
                JavaFile.builder(this.f62324c, a()).addFileComment("AUTO GENERATED FILE, DO NOT MODIFY", new Object[0]).build().writeTo(this.f62322a);
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        return true;
    }
}
