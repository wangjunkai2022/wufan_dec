.class public final synthetic Lcom/join/mgps/activity/l1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/l1;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/join/mgps/activity/l1;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->G0(Lcom/join/mgps/activity/ModGameIndexActivity;Ljava/lang/Integer;)V

    return-void
.end method
