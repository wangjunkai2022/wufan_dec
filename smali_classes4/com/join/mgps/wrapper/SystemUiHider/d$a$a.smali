.class Lcom/join/mgps/wrapper/SystemUiHider/d$a$a;
.super Ljava/lang/Object;
.source "TabbedHelpViewFactory.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


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
    iput-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a$a;->a:Lcom/join/mgps/wrapper/SystemUiHider/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/wrapper/SystemUiHider/d$a$a;->a:Lcom/join/mgps/wrapper/SystemUiHider/d$a;

    invoke-static {p1}, Lcom/join/mgps/wrapper/SystemUiHider/d$a;->a(Lcom/join/mgps/wrapper/SystemUiHider/d$a;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1
.end method
