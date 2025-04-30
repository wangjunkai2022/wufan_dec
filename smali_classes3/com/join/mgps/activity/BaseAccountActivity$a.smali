.class Lcom/join/mgps/activity/BaseAccountActivity$a;
.super Ljava/lang/Object;
.source "BaseAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/BaseAccountActivity;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/BaseAccountActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/BaseAccountActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/BaseAccountActivity$a;->a:Lcom/join/mgps/activity/BaseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/BaseAccountActivity$a;->a:Lcom/join/mgps/activity/BaseAccountActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
