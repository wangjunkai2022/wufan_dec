.class Lcom/join/mgps/activity/AccountUpgradeActivity$a;
.super Ljava/lang/Object;
.source "AccountUpgradeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AccountUpgradeActivity;->P0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/join/mgps/activity/AccountUpgradeActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountUpgradeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->f:Lcom/join/mgps/activity/AccountUpgradeActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->d:Ljava/lang/String;

    iput p6, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->f:Lcom/join/mgps/activity/AccountUpgradeActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->d:Ljava/lang/String;

    iget v5, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/activity/AccountUpgradeActivity;->R0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/AccountUpgradeActivity$a;->f:Lcom/join/mgps/activity/AccountUpgradeActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/AccountUpgradeActivity;->E0(Lcom/join/mgps/activity/AccountUpgradeActivity;)V

    return-void
.end method
