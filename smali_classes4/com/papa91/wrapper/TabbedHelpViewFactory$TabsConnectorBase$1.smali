.class Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$1;
.super Ljava/lang/Object;
.source "TabbedHelpViewFactory.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


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
    iput-object p1, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$1;->this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase$1;->this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;

    invoke-static {p1}, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;->access$000(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorBase;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1
.end method
