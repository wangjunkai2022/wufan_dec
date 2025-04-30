.class Lcom/join/mgps/activity/WebViewSearchActivity$d;
.super Ljava/lang/Object;
.source "WebViewSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$d;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$d;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/WebViewSearchActivity;->downloadLayout()V

    return-void
.end method
