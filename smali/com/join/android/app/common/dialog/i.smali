.class public final synthetic Lcom/join/android/app/common/dialog/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/join/android/app/common/dialog/j;

.field public final synthetic b:Lcom/join/mgps/activity/b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/android/app/common/dialog/j;Lcom/join/mgps/activity/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/android/app/common/dialog/i;->a:Lcom/join/android/app/common/dialog/j;

    iput-object p2, p0, Lcom/join/android/app/common/dialog/i;->b:Lcom/join/mgps/activity/b;

    iput p3, p0, Lcom/join/android/app/common/dialog/i;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/join/android/app/common/dialog/i;->a:Lcom/join/android/app/common/dialog/j;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/i;->b:Lcom/join/mgps/activity/b;

    iget v2, p0, Lcom/join/android/app/common/dialog/i;->c:I

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/dialog/j;->O(Lcom/join/android/app/common/dialog/j;Lcom/join/mgps/activity/b;I)V

    return-void
.end method
