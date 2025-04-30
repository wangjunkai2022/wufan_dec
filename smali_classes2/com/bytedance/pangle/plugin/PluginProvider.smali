.class public interface abstract Lcom/bytedance/pangle/plugin/PluginProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract provideBuiltInPlugin()Ljava/io/File;
.end method

.method public abstract providePluginConfig()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/pangle/download/PluginDownloadBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract useLocalPlugin()Z
.end method
