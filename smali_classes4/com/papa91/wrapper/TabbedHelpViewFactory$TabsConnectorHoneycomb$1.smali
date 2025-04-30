.class Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb$1;
.super Ljava/lang/Object;
.source "TabbedHelpViewFactory.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;-><init>(Landroid/app/Activity;[[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;


# direct methods
.method constructor <init>(Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb$1;->this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb$1;->this$0:Lcom/papa91/wrapper/TabbedHelpViewFactory$TabsConnectorHoneycomb;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
