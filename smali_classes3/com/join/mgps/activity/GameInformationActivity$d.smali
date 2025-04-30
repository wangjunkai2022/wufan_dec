.class Lcom/join/mgps/activity/GameInformationActivity$d;
.super Landroid/webkit/WebViewClient;
.source "GameInformationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity;->a1(Lcom/join/mgps/dto/GameInformationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$d;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$d;->a:Lcom/join/mgps/activity/GameInformationActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameInformationActivity;->r0:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
