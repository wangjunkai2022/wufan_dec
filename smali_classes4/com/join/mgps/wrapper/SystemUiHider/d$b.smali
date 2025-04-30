.class Lcom/join/mgps/wrapper/SystemUiHider/d$b;
.super Landroid/webkit/WebView;
.source "TabbedHelpViewFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/wrapper/SystemUiHider/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/app/ActionBar;


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
    new-instance p1, Lcom/join/mgps/wrapper/SystemUiHider/d$b$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/wrapper/SystemUiHider/d$b$a;-><init>(Lcom/join/mgps/wrapper/SystemUiHider/d$b;)V

    return-void
.end method
