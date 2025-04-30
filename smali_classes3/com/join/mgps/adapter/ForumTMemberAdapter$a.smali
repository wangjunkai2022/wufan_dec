.class Lcom/join/mgps/adapter/ForumTMemberAdapter$a;
.super Landroid/widget/SimpleAdapter;
.source "ForumTMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumTMemberAdapter;->h(Ljava/util/ArrayList;)Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/ForumTMemberAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumTMemberAdapter;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumTMemberAdapter$a;->a:Lcom/join/mgps/adapter/ForumTMemberAdapter;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method
