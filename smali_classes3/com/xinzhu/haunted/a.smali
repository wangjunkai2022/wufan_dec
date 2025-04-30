.class public Lcom/xinzhu/haunted/a;
.super Ljava/lang/Object;
.source "ALog.java"


# static fields
.field private static a:Ljavax/annotation/processing/Messager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/haunted/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/a;->a:Ljavax/annotation/processing/Messager;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/haunted/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljavax/annotation/processing/Messager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/xinzhu/haunted/a;->a:Ljavax/annotation/processing/Messager;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/a;->a:Ljavax/annotation/processing/Messager;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/haunted/a;->a:Ljavax/annotation/processing/Messager;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ljavax/tools/Diagnostic$Kind;->WARNING:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v0, v1, p0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
