.class Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$2;
.super Ljava/lang/Object;
.source "TabbedHelpViewFactory.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;-><init>(Landroid/content/Context;[[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;


# direct methods
.method constructor <init>(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$2;->this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$2;->this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;

    invoke-static {v0}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;->access$000(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
