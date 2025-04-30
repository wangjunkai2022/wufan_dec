.class public final Lcom/join/android/app/mgsim/wufun/generated/callback/a;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;

.field final b:I


# direct methods
.method public constructor <init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;->a:Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;

    .line 3
    iput p2, p0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;->a:Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;

    iget v1, p0, Lcom/join/android/app/mgsim/wufun/generated/callback/a;->b:I

    invoke-interface {v0, v1, p1}, Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;->a(ILandroid/view/View;)V

    return-void
.end method
