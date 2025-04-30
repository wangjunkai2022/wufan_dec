.class Lcom/join/mgps/activity/TagAddActivity$j;
.super Ljava/lang/Object;
.source "TagAddActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->R0(Lcom/join/mgps/dto/GameTagsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameTagsBean;

.field final synthetic b:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$j;->b:Lcom/join/mgps/activity/TagAddActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/TagAddActivity$j;->a:Lcom/join/mgps/dto/GameTagsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$j;->b:Lcom/join/mgps/activity/TagAddActivity;

    iget-object p2, p0, Lcom/join/mgps/activity/TagAddActivity$j;->a:Lcom/join/mgps/dto/GameTagsBean;

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/TagAddActivity;->J0(Lcom/join/mgps/dto/GameTagsBean;)V

    return-void
.end method
