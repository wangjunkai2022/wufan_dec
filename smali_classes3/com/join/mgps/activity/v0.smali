.class public final synthetic Lcom/join/mgps/activity/v0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/v0;->a:Lcom/join/mgps/activity/MGMainActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/activity/v0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/MGMainActivity;->E0(Lcom/join/mgps/activity/MGMainActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
