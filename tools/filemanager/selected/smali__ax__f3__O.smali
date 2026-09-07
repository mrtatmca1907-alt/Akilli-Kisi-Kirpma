.class public Lax/f3/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lax/f3/O$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lcom/alphainventor/filemanager/file/B;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "FileManager.NewFilesScan"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lax/f3/O;->b:Ljava/util/logging/Logger;

    .line 8
    .line 9
    return-void
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
.end method

.method public constructor <init>(Lcom/alphainventor/filemanager/file/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lax/f3/O;->a:Lcom/alphainventor/filemanager/file/B;

    .line 5
    .line 6
    return-void
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private b(Ljava/util/List;Ljava/util/List;JLax/c3/i;Ljava/io/Writer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/v;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;J",
            "Lax/c3/i;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v7, Lax/f3/O$b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v7, v0}, Lax/f3/O$b;-><init>(Lax/f3/O$a;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v8, 0x0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v8, v0, :cond_7

    .line 14
    .line 15
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lcom/alphainventor/filemanager/file/v;

    .line 21
    .line 22
    move-object v0, v1

    .line 23
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/y;->G0()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/y;->g()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-wide v3, p3

    .line 37
    invoke-static {v1, v3, v4}, Lax/f3/O;->d(Ljava/io/File;J)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lax/c3/i;->c()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    const/4 v5, -0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-static {v7, v2}, Lax/f3/O$b;->a(Lax/f3/O$b;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v5, v7, Lax/f3/O$b;->a:Z

    .line 56
    .line 57
    if-eqz v5, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget-object v6, v7, Lax/f3/O$b;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    :goto_2
    if-nez v5, :cond_4

    .line 70
    .line 71
    iget-wide v5, v7, Lax/f3/O$b;->c:J

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    cmp-long v11, v5, v9

    .line 78
    .line 79
    if-nez v11, :cond_3

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, "\n"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    move-object/from16 v6, p6

    .line 99
    .line 100
    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p5 .. p5}, Lax/c3/i;->a()V

    .line 104
    .line 105
    .line 106
    move-object v2, p2

    .line 107
    move-object/from16 v5, p5

    .line 108
    .line 109
    move-object v1, v0

    .line 110
    move-object v0, p0

    .line 111
    invoke-direct/range {v0 .. v6}, Lax/f3/O;->e(Lcom/alphainventor/filemanager/file/v;Ljava/util/List;JLax/c3/i;Ljava/io/Writer;)V

    .line 112
    .line 113
    .line 114
    move-object v9, v5

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    move-object/from16 v9, p5

    .line 117
    .line 118
    move-object v2, v0

    .line 119
    invoke-virtual {v9}, Lax/c3/i;->a()V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v9}, Lax/f3/O;->g(Lax/c3/i;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/y;->C0()Lax/f3/K;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    move-object v0, p0

    .line 130
    move-object v2, p2

    .line 131
    move-wide v3, p3

    .line 132
    move-object/from16 v6, p6

    .line 133
    .line 134
    invoke-direct/range {v0 .. v6}, Lax/f3/O;->f(Ljava/io/File;Ljava/util/List;JLax/f3/K;Ljava/io/Writer;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    move-object/from16 v9, p5

    .line 139
    .line 140
    move-object v2, v0

    .line 141
    if-gez v5, :cond_5

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/y;->C0()Lax/f3/K;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    move-object v0, p0

    .line 148
    move-object v2, p2

    .line 149
    move-wide v3, p3

    .line 150
    move-object/from16 v6, p6

    .line 151
    .line 152
    invoke-direct/range {v0 .. v6}, Lax/f3/O;->f(Ljava/io/File;Ljava/util/List;JLax/f3/K;Ljava/io/Writer;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    invoke-virtual {v9}, Lax/c3/i;->a()V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v9}, Lax/f3/O;->g(Lax/c3/i;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_6
    move-object/from16 v9, p5

    .line 165
    .line 166
    invoke-virtual {v9}, Lax/c3/i;->b()V

    .line 167
    .line 168
    .line 169
    new-instance v1, Ljava/io/IOException;

    .line 170
    .line 171
    const-string v2, "scan file type does not match"

    .line 172
    .line 173
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :cond_7
    return-void
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
.end method

.method public static c()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/16 v2, -0xa

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0xc

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xd

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0xe

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {}, Lax/y3/m;->l()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
.end method

.method private static d(Ljava/io/File;J)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p0, v0, p1

    .line 6
    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
.end method

.method private e(Lcom/alphainventor/filemanager/file/v;Ljava/util/List;JLax/c3/i;Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alphainventor/filemanager/file/v;",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;J",
            "Lax/c3/i;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lax/f3/O$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lax/f3/O$b;-><init>(Lax/f3/O$a;)V

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p5}, Lax/c3/i;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {v0, v1}, Lax/f3/O$b;->a(Lax/f3/O$b;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, v0, Lax/f3/O$b;->a:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    :goto_1
    return-void

    .line 22
    :cond_1
    iget-wide v2, v0, Lax/f3/O$b;->c:J

    .line 23
    .line 24
    cmp-long v4, v2, p3

    .line 25
    .line 26
    if-lez v4, :cond_2

    .line 27
    .line 28
    new-instance v2, Ljava/io/File;

    .line 29
    .line 30
    iget-object v3, v0, Lax/f3/O$b;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/alphainventor/filemanager/file/C;

    .line 36
    .line 37
    iget-object v4, p0, Lax/f3/O;->a:Lcom/alphainventor/filemanager/file/B;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/alphainventor/filemanager/file/y;->C0()Lax/f3/K;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-direct {v3, v4, v2, v5}, Lcom/alphainventor/filemanager/file/C;-><init>(Lcom/alphainventor/filemanager/file/u;Ljava/io/File;Lax/f3/K;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "\n"

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p5}, Lax/c3/i;->a()V

    .line 70
    .line 71
    .line 72
    goto :goto_0
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
.end method

.method private f(Ljava/io/File;Ljava/util/List;JLax/f3/K;Ljava/io/Writer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;J",
            "Lax/f3/K;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p3, p4}, Lax/f3/O;->d(Ljava/io/File;J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lax/f3/d0;->C(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :cond_0
    move-object v2, p0

    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    cmp-long v5, v1, v3

    .line 39
    .line 40
    if-lez v5, :cond_0

    .line 41
    .line 42
    invoke-direct {p0, p6, p1}, Lax/f3/O;->i(Ljava/io/Writer;Ljava/io/File;)V

    .line 43
    .line 44
    .line 45
    array-length p1, v0

    .line 46
    const/4 v1, 0x0

    .line 47
    :goto_0
    if-ge v1, p1, :cond_0

    .line 48
    .line 49
    aget-object v3, v0, v1

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 52
    .line 53
    .line 54
    move-result v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    move-object v2, p0

    .line 58
    move-object v4, p2

    .line 59
    move-wide v5, p3

    .line 60
    move-object v7, p5

    .line 61
    move-object v8, p6

    .line 62
    :try_start_1
    invoke-direct/range {v2 .. v8}, Lax/f3/O;->f(Ljava/io/File;Ljava/util/List;JLax/f3/K;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v2, p0

    .line 67
    move-object v4, p2

    .line 68
    move-wide v5, p3

    .line 69
    move-object v7, p5

    .line 70
    move-object v8, p6

    .line 71
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    move-object p2, v4

    .line 74
    move-wide p3, v5

    .line 75
    move-object p5, v7

    .line 76
    move-object p6, v8

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-object v2, p0

    .line 79
    :catch_1
    invoke-static {}, Lax/sb/c;->h()Lax/sb/b;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "searchNewFile : OutOfMemory"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lax/sb/b;->d(Ljava/lang/String;)Lax/sb/b;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lax/sb/b;->i()V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object v2, p0

    .line 94
    move-object v4, p2

    .line 95
    move-object v7, p5

    .line 96
    move-object v8, p6

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {p2}, Lax/f3/A;->b(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    invoke-direct {p0, v8, p1}, Lax/f3/O;->j(Ljava/io/Writer;Ljava/io/File;)V

    .line 108
    .line 109
    .line 110
    new-instance p2, Lcom/alphainventor/filemanager/file/C;

    .line 111
    .line 112
    iget-object p3, v2, Lax/f3/O;->a:Lcom/alphainventor/filemanager/file/B;

    .line 113
    .line 114
    invoke-direct {p2, p3, p1, v7}, Lcom/alphainventor/filemanager/file/C;-><init>(Lcom/alphainventor/filemanager/file/u;Ljava/io/File;Lax/f3/K;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_2
    return-void
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
.end method

.method private g(Lax/c3/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Lax/c3/i;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const-string v1, "F"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :goto_1
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Lax/c3/i;->a()V

    .line 18
    .line 19
    .line 20
    goto :goto_0
    .line 21
    .line 22
.end method

.method private h(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2710

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "DateDown"

    .line 10
    .line 11
    invoke-static {v0}, Lax/f3/q;->c(Ljava/lang/String;)Lax/f3/q;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lax/f3/q;->g(Ljava/util/List;Lax/f3/q;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lax/c3/b;->k()Lax/c3/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0xa000

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lax/c3/b;->w(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lax/f3/O;->a:Lcom/alphainventor/filemanager/file/B;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/m;->x()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/alphainventor/filemanager/file/B;->a1(Ljava/lang/String;)Lcom/alphainventor/filemanager/file/n;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Lax/c3/b;->k()Lax/c3/b;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0, p1}, Lax/c3/b;->m(Lcom/alphainventor/filemanager/file/n;Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    return-void
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
.end method

.method private i(Ljava/io/Writer;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "D"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    const-string v1, "\u0000"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    const-string p2, "\n"

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method

.method private j(Ljava/io/Writer;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "F"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    const-string v1, "\u0000"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    const-string p2, "\n"

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alphainventor/filemanager/file/v;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alphainventor/filemanager/file/n;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v1, ".tmp"

    .line 2
    .line 3
    invoke-static {}, Lax/f3/O;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lax/a3/Q;->h1()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    if-eqz p3, :cond_3

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_3

    .line 34
    .line 35
    sget-object v0, Lax/f3/O;->b:Ljava/util/logging/Logger;

    .line 36
    .line 37
    const-string v2, "scan build newfiles using MediaStore"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/alphainventor/filemanager/file/n;

    .line 57
    .line 58
    invoke-interface {v0}, Lax/f3/b;->q()J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    cmp-long v2, v7, v5

    .line 63
    .line 64
    if-ltz v2, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/n;->G()Lax/f3/z;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Lax/f3/A;->a(Lax/f3/z;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    invoke-interface {v0}, Lax/f3/b;->isDirectory()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_0

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/n;->U()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/alphainventor/filemanager/file/v;

    .line 91
    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/y;->g()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    check-cast v0, Lcom/alphainventor/filemanager/file/y;

    .line 102
    .line 103
    new-instance v2, Lcom/alphainventor/filemanager/file/C;

    .line 104
    .line 105
    iget-object v7, p0, Lax/f3/O;->a:Lcom/alphainventor/filemanager/file/B;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/y;->G0()Ljava/io/File;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v0}, Lcom/alphainventor/filemanager/file/y;->C0()Lax/f3/K;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {v2, v7, v8, v0}, Lcom/alphainventor/filemanager/file/C;-><init>(Lcom/alphainventor/filemanager/file/u;Ljava/io/File;Lax/f3/K;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/y;->t1()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/alphainventor/filemanager/file/y;->o()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    .line 127
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    move-object p2, v0

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-direct {p0, v4}, Lax/f3/O;->h(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :cond_3
    const/4 p2, 0x0

    .line 142
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 147
    .line 148
    .line 149
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    .line 153
    .line 154
    new-instance v2, Ljava/io/FileReader;

    .line 155
    .line 156
    invoke-direct {v2, p3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .line 161
    .line 162
    move-object v2, v0

    .line 163
    goto :goto_3

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    move-object p1, v0

    .line 166
    move-object v3, p0

    .line 167
    :goto_2
    move-object v8, p2

    .line 168
    goto/16 :goto_c

    .line 169
    .line 170
    :cond_4
    move-object v2, p2

    .line 171
    :goto_3
    :try_start_3
    new-instance v8, Ljava/io/BufferedWriter;

    .line 172
    .line 173
    new-instance v0, Ljava/io/FileWriter;

    .line 174
    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-direct {v0, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {v8, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 194
    .line 195
    .line 196
    if-eqz v2, :cond_5

    .line 197
    .line 198
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    goto :goto_5

    .line 203
    :catchall_1
    move-exception v0

    .line 204
    move-object p1, v0

    .line 205
    move-object v3, p0

    .line 206
    :goto_4
    move-object p2, v2

    .line 207
    goto/16 :goto_c

    .line 208
    .line 209
    :cond_5
    move-object v0, p2

    .line 210
    :goto_5
    :try_start_5
    const-string v7, "1"

    .line 211
    .line 212
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 216
    if-nez v0, :cond_7

    .line 217
    .line 218
    if-eqz v2, :cond_7

    .line 219
    .line 220
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    .line 222
    .line 223
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :catchall_2
    move-exception v0

    .line 234
    move-object p1, v0

    .line 235
    move-object v3, p0

    .line 236
    goto/16 :goto_c

    .line 237
    .line 238
    :cond_6
    :goto_6
    move-object v9, p2

    .line 239
    goto :goto_7

    .line 240
    :cond_7
    move-object v9, v2

    .line 241
    :goto_7
    :try_start_8
    const-string v0, "1\n"

    .line 242
    .line 243
    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    new-instance v7, Lax/c3/i;

    .line 247
    .line 248
    invoke-direct {v7, v9}, Lax/c3/i;-><init>(Ljava/io/BufferedReader;)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Lax/f3/O$a;

    .line 252
    .line 253
    invoke-direct {v0, p0}, Lax/f3/O$a;-><init>(Lax/f3/O;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 257
    .line 258
    .line 259
    move-object v2, p0

    .line 260
    :try_start_9
    invoke-direct/range {v2 .. v8}, Lax/f3/O;->b(Ljava/util/List;Ljava/util/List;JLax/c3/i;Ljava/io/Writer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 261
    .line 262
    .line 263
    move-object v3, v2

    .line 264
    :try_start_a
    invoke-direct {p0, v4}, Lax/f3/O;->h(Ljava/util/List;)V

    .line 265
    .line 266
    .line 267
    if-eqz v9, :cond_8

    .line 268
    .line 269
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 270
    .line 271
    .line 272
    move-object v9, p2

    .line 273
    goto :goto_a

    .line 274
    :catchall_3
    move-exception v0

    .line 275
    :goto_8
    move-object p1, v0

    .line 276
    :goto_9
    move-object p2, v9

    .line 277
    goto :goto_c

    .line 278
    :cond_8
    :goto_a
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 279
    .line 280
    .line 281
    :try_start_b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 288
    .line 289
    .line 290
    goto :goto_b

    .line 291
    :catchall_4
    move-exception v0

    .line 292
    move-object p1, v0

    .line 293
    move-object v8, p2

    .line 294
    goto :goto_9

    .line 295
    :cond_9
    :goto_b
    new-instance v0, Ljava/io/File;

    .line 296
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p3

    .line 312
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 320
    .line 321
    .line 322
    if-eqz v9, :cond_a

    .line 323
    .line 324
    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 325
    .line 326
    .line 327
    :catch_1
    :cond_a
    return-void

    .line 328
    :catchall_5
    move-exception v0

    .line 329
    move-object v3, v2

    .line 330
    goto :goto_8

    .line 331
    :catchall_6
    move-exception v0

    .line 332
    move-object v3, p0

    .line 333
    goto :goto_8

    .line 334
    :catchall_7
    move-exception v0

    .line 335
    move-object v3, p0

    .line 336
    move-object p1, v0

    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    :catchall_8
    move-exception v0

    .line 340
    move-object v3, p0

    .line 341
    move-object p1, v0

    .line 342
    move-object v8, p2

    .line 343
    goto/16 :goto_4

    .line 344
    .line 345
    :catchall_9
    move-exception v0

    .line 346
    move-object v3, p0

    .line 347
    move-object p1, v0

    .line 348
    goto/16 :goto_2

    .line 349
    .line 350
    :goto_c
    if-eqz p2, :cond_b

    .line 351
    .line 352
    :try_start_d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 353
    .line 354
    .line 355
    :cond_b
    if-eqz v8, :cond_c

    .line 356
    .line 357
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 358
    .line 359
    .line 360
    :catch_2
    :cond_c
    throw p1
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
.end method
