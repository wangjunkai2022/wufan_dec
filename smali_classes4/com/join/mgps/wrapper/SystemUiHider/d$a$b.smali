.class Lcom/join/mgps/wrapper/SystemUiHider/d$a$b;
.super Ljava/lang/Object;
.source "TabbedHelpViewFactory.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/wrapper/SystemUiHider/d$a;-><init>(Landroid/content/Context;[[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/wrapper/SystemUiHider/d$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a$b;->a:Lcom/join/mgps/wrapper/SystemUiHider/d$a;

    invoke-static {v0}, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->a(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
