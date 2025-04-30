.class Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;
.super Landroid/webkit/WebView;
.source "TabbedHelpViewFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/wrapper/TabbedHelpViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabsConnectorHoneycomb"
.end annotation


# instance fields
.field private ab:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 3
    new-instance p1, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb$1;

    invoke-direct {p1, p0}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb$1;-><init>(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;)V

    return-void
.end method
