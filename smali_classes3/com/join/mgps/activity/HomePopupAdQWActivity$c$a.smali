.class Lcom/join/mgps/activity/HomePopupAdQWActivity$c$a;
.super Ljava/lang/Object;
.source "HomePopupAdQWActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$a;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$c$a;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity$c;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity$c;->b:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
