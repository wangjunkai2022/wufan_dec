.class Lcom/xinzhu/overmind/Overmind$c;
.super Ljava/lang/Object;
.source "Overmind.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/Overmind;->launchApk(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:Lcom/xinzhu/overmind/Overmind;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/Overmind;Landroid/content/Intent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$launchIntentForPackage",
            "val$userId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/Overmind$c;->c:Lcom/xinzhu/overmind/Overmind;

    iput-object p2, p0, Lcom/xinzhu/overmind/Overmind$c;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/xinzhu/overmind/Overmind$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/Overmind$c;->c:Lcom/xinzhu/overmind/Overmind;

    iget-object v1, p0, Lcom/xinzhu/overmind/Overmind$c;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/xinzhu/overmind/Overmind$c;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/xinzhu/overmind/Overmind;->startActivity(Landroid/content/Intent;I)V

    return-void
.end method
