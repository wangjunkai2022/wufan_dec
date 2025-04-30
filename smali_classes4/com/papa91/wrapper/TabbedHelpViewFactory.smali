.class public abstract Lcom/papa91/wrapper/TabbedHelpViewFactory;
.super Ljava/lang/Object;
.source "TabbedHelpViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;,
        Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newTabbedHelpView(Landroid/app/Activity;[[Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;

    invoke-direct {v0, p0, p1}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;-><init>(Landroid/content/Context;[[Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;

    invoke-direct {v0, p0, p1}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;-><init>(Landroid/app/Activity;[[Ljava/lang/String;)V

    return-object v0
.end method
