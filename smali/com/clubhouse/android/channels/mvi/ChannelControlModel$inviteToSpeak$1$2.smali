.class public final Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChannelControlModel.kt"

# interfaces
.implements La1/n/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "La1/n/a/p<",
        "Ld0/a/a/p1/g/h;",
        "Ld0/c/b/b<",
        "+",
        "Lcom/clubhouse/android/data/models/remote/response/EmptySuccessResponse;",
        ">;",
        "Ld0/a/a/p1/g/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;


# direct methods
.method public constructor <init>(Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;)V
    .locals 0

    iput-object p1, p0, Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1$2;->i:Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ld0/a/a/p1/g/h;

    move-object/from16 v2, p2

    check-cast v2, Ld0/c/b/b;

    const-string v3, "$receiver"

    .line 2
    invoke-static {v1, v3}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "it"

    invoke-static {v2, v3}, La1/n/b/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v3, v2, Ld0/c/b/e0;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 4
    iget-object v2, v0, Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1$2;->i:Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;

    iget-object v2, v2, Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;->i:Lcom/clubhouse/android/channels/mvi/ChannelControlModel;

    sget-object v3, Ld0/a/a/p1/g/n0;->a:Ld0/a/a/p1/g/n0;

    .line 5
    invoke-virtual {v2, v3}, Ld0/a/a/q1/b/a;->h(Ld0/a/a/q1/b/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    iget-object v6, v1, Ld0/a/a/p1/g/h;->e:Ld0/a/a/r1/a/a/b/c;

    .line 7
    iget-object v7, v0, Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1$2;->i:Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;

    iget-object v7, v7, Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;->j:Lcom/clubhouse/android/data/models/local/channel/UserInChannel;

    .line 8
    iget v7, v7, Lcom/clubhouse/android/data/models/local/channel/UserInChannel;->q:I

    .line 9
    iget-object v8, v6, Ld0/a/a/r1/a/a/b/c;->c:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v7}, La1/j/d;->L(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v6, v5, v5, v7, v8}, Ld0/a/a/r1/a/a/b/c;->a(Ld0/a/a/r1/a/a/b/c;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)Ld0/a/a/r1/a/a/b/c;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ff7

    const/16 v17, 0x0

    .line 10
    invoke-static/range {v1 .. v17}, Ld0/a/a/p1/g/h;->copy$default(Ld0/a/a/p1/g/h;Ljava/lang/String;Lcom/clubhouse/android/data/models/local/channel/Channel;Ld0/a/a/r1/a/a/b/a;Ld0/a/a/r1/a/a/b/c;ZZZLcom/clubhouse/android/data/models/local/channel/HandraisePermission;Ljava/util/List;ZJZZILjava/lang/Object;)Ld0/a/a/p1/g/h;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    instance-of v2, v2, Ld0/c/b/c;

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, v0, Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1$2;->i:Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;

    iget-object v2, v2, Lcom/clubhouse/android/channels/mvi/ChannelControlModel$inviteToSpeak$1;->i:Lcom/clubhouse/android/channels/mvi/ChannelControlModel;

    new-instance v3, Ld0/a/a/q1/b/d;

    const/4 v4, 0x1

    invoke-direct {v3, v5, v4}, Ld0/a/a/q1/b/d;-><init>(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {v2, v3}, Ld0/a/a/q1/b/a;->h(Ld0/a/a/q1/b/b;)V

    :cond_1
    :goto_0
    return-object v1
.end method