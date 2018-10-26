global.MAX_OBJECTS = 10;
global.MAX_LEVELS = 5;
global.collidables = ds_list_create();

var rect = [[0, 0], [room_width, room_height]];
quadStart = createQuad(1, rect);

// Test
for (var i = 0; i < 50; i++)
    instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Instances", oEnemy);