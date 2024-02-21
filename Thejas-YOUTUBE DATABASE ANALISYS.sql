create database prothej;
use prothej;
show tables;
CREATE TABLE Videos (
    video_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    upload_date DATE,
    duration TIME,
    view_count INT DEFAULT 0,
    likes INT DEFAULT 0,
    dislikes INT DEFAULT 0,
    channel_id INT,
    FOREIGN KEY (channel_id) REFERENCES Channels(channel_id)
);

CREATE TABLE Channels (
    channel_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    creation_date DATE,
    Subscribes int
);

CREATE TABLE Comments (
    comment_id INT PRIMARY KEY,
    video_id INT,
    channel_id INT,
    comment_text TEXT,
    comment_date DATETIME,
    FOREIGN KEY (video_id) REFERENCES Videos(video_id),
    FOREIGN KEY (channel_id) REFERENCES Channels(channel_id)
);

CREATE TABLE Subscriptions (
    subscriber_id INT PRIMARY KEY,
    channel_id INT,
    subscription_date DATE,
    FOREIGN KEY (subscriber_id) REFERENCES Users(user_id),
    FOREIGN KEY (channel_id) REFERENCES Channels(channel_id)
);
drop table Subscriptions;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(255),
    password VARCHAR(255),
    registration_date DATE,
    subscriber_id int 
);

-- Inserting Values into Channels Table-- 
INSERT INTO Channels (channel_id, name, description, creation_date, Subscribes)
VALUES
    (1, 'TechGuru', 'The ultimate destination for all things tech! Stay updated with the latest reviews, tutorials, and news.', '2023-09-01', 500),
    (2, 'CookingWorld', 'Explore the world of culinary delights with our easy-to-follow recipes and cooking tips.', '2023-10-15', 1000),
    (3, 'FitnessFreaks', 'Get in shape and live a healthier lifestyle with our workout routines, nutrition guides, and motivational content.', '2023-11-20', 1500),
    (4, 'TravelJunkies', 'Embark on unforgettable adventures around the globe with our travel vlogs and destination guides.', '2023-12-10', 2000),
    (5, 'ArtisticExpressions', 'Discover the beauty of art in all its forms, from painting and sculpture to photography and digital art.', '2024-01-05', 2500),
    (6, 'GamingLegends', 'Join us for epic gaming experiences, walkthroughs, and gaming news from the world of video games.', '2024-02-03', 3000),
    (7, 'DIYGenius', 'Unleash your creativity with our DIY projects, crafting ideas, and home improvement tutorials.', '2024-03-10', 3500),
    (8, 'MusicMasters', 'Experience the magic of music with our covers, original compositions, and music production tutorials.', '2024-04-15', 4000),
    (9, 'ComedyCentral', 'Laugh out loud with our hilarious sketches, stand-up comedy, and funny viral videos.', '2024-05-20', 4500),
    (10, 'FashionForward', 'Stay stylish and trendy with our fashion tips, outfit ideas, and beauty hacks.', '2024-06-10', 5000),
    (11, 'NatureAdventures', 'Explore the wonders of nature with breathtaking footage of wildlife, landscapes, and outdoor adventures.', '2024-07-01', 5500),
    (12, 'ScienceExplorers', 'Delve into the fascinating world of science with experiments, discoveries, and explanations of scientific phenomena.', '2024-08-12', 6000),
    (13, 'HealthHub', 'Take charge of your health and well-being with expert advice on nutrition, fitness, and mental wellness.', '2024-09-23', 6500),
    (14, 'TechTips', 'Stay ahead in the tech world with our in-depth tutorials, tips, and tricks for mastering your devices and software.', '2024-10-05', 7000),
    (15, 'FoodFusion', 'Indulge your taste buds with our fusion recipes blending flavors from around the world for a culinary adventure.', '2024-11-18', 7500),
    (16, 'TravelEnthusiasts', 'Get inspired to travel the world and create unforgettable memories with our travel guides and tips.', '2024-12-30', 8000),
    (17, 'MusicMakers', 'Unlock your musical potential with our lessons, tutorials, and insights into the world of music production.', '2025-01-10', 8500),
    (18, 'TechTalks', 'Engage in discussions on the latest trends, innovations, and controversies in the tech industry.', '2025-02-22', 9000),
    (19, 'FitnessFanatics', 'Join our community of fitness enthusiasts dedicated to achieving their health and fitness goals.', '2025-03-05', 9500),
    (20, 'ArtisansWorkshop', 'Celebrate craftsmanship and creativity with artisanal projects, handmade goods, and artisan spotlights.', '2025-04-17', 10000)
    ;
select*from Channels;
select*from users;
select*from videos;
select*from subscriptions;
select*from comments;

-- Inserting values into videos table--
INSERT INTO Videos (video_id, title, description, upload_date, duration, view_count, likes, dislikes, channel_id)
VALUES
    (1, 'Top 10 Gadgets of 2024', 'Check out the coolest gadgets of the year and stay ahead in the tech game!', '2024-07-02', '00:10:30', 10000, 500, 10, 1),
    (2, 'Beginners Guide to Coding', 'Learn the basics of coding and kickstart your journey into the world of programming.', '2024-07-15', '00:15:45', 12000, 700, 15, 1),
    (3, 'Review: Latest Smartphone', 'Get an in-depth review of the newest smartphone on the market and decide if its worth the hype.', '2024-08-01', '00:20:20', 8000, 600, 20, 1),
    (4, 'Easy Weeknight Dinners', 'Discover quick and delicious dinner recipes perfect for busy weeknights.', '2024-07-03', '00:12:00', 15000, 800, 5, 2),
    (5, 'Baking Basics: Chocolate Cake', 'Learn how to bake a moist and decadent chocolate cake from scratch.', '2024-07-20', '00:18:30', 18000, 1000, 8, 2),
    (6, 'Healthy Breakfast Ideas', 'Start your day right with these nutritious and tasty breakfast recipes.', '2024-08-05', '00:15:00', 12000, 900, 10, 2),
    (7, 'Full Body Workout for Beginners', 'Follow along with this beginner-friendly full-body workout to kickstart your fitness journey.', '2024-07-04', '00:25:00', 20000, 1200, 15, 3),
    (8, '10-Minute Abs Workout', 'Get ready to feel the burn with this quick and effective abs workout you can do anywhere.', '2024-07-22', '00:10:00', 25000, 1500, 12, 3),
    (9, 'Healthy Eating Tips', 'Learn how to make healthier food choices and improve your overall well-being with these nutrition tips.', '2024-08-08', '00:08:00', 18000, 1000, 5, 3),
    (10, 'Exploring Paris: Must-Visit Attractions', 'Take a virtual tour of the City of Light and discover its iconic landmarks and hidden gems.', '2024-07-05', '00:30:00', 30000, 2000, 20, 4),
    (11, 'Backpacking Across Southeast Asia', 'Join us on an adventure-packed journey through the breathtaking landscapes and vibrant cultures of Southeast Asia.', '2024-07-25', '01:00:00', 35000, 2500, 25, 4),
    (12, 'Best Beaches in the World', 'Escape to paradise with our guide to the most beautiful beaches around the globe.', '2024-08-10', '00:45:00', 40000, 3000, 30, 4),
    (13, 'Painting Tutorial: Sunset Landscape', 'Learn how to paint a stunning sunset landscape with acrylics in this step-by-step tutorial.', '2024-07-06', '00:20:00', 25000, 1500, 10, 5),
    (14, 'Sculpting Clay Figures', 'Get creative with clay and sculpt your own unique figures with these beginner-friendly techniques.', '2024-07-28', '00:25:00', 28000, 1800, 12, 5),
    (15, 'Photography Tips for Beginners', 'Master the art of photography with these essential tips and tricks for capturing stunning images.', '2024-08-12', '00:15:00', 30000, 2000, 15, 5),
    (16, 'Lets Play: Cyberpunk 2077', 'Join us as we dive into the futuristic world of Cyberpunk 2077 and embark on thrilling adventures.', '2024-07-07', '01:30:00', 40000, 2500, 30, 6),
    (17, 'Game Review: The Last of Us Part II', 'Find out if The Last of Us Part II lives up to the hype in our comprehensive review of the game.', '2024-07-30', '00:45:00', 45000, 3000, 35, 6),
    (18, 'Speedrun: Super Mario Bros', 'Witness the ultimate test of skill and speed as we attempt to beat Super Mario Bros in record time.', '2024-08-15', '00:20:00', 50000, 3500, 40, 6),
    (19, 'DIY Home Decor Ideas', 'Transform your living space with these creative and budget-friendly DIY home decor projects.', '2024-07-08', '00:25:00', 35000, 2000, 25, 7),
    (20, 'Upcycling Old Furniture', 'Give new life to old furniture with these upcycling ideas that are both eco-friendly and stylish.', '2024-07-31', '00:30:00', 38000, 2300, 28, 7),
    (21, 'Crafting with Kids', 'Get the whole family involved in crafting with these fun and easy DIY projects for kids of all ages.', '2024-08-18', '00:15:00', 40000, 2500, 20, 7),
    (22, 'Latest Tech News Roundup', 'Stay updated with the latest tech news and announcements from around the world.', '2024-08-20', '00:08:00', 8000, 400, 5, 1),
    (23, 'Gaming Laptop Review', 'Find the perfect gaming laptop for your needs with our comprehensive review and buying guide.', '2024-09-05', '00:12:00', 10000, 600, 8, 1),
    (24, 'Smart Home Setup Guide', 'Transform your home into a smart home with our step-by-step guide to setting up smart devices.', '2024-09-25', '00:15:00', 12000, 700, 10, 1),
    (25, 'Summer BBQ Recipes', 'Fire up the grill and impress your guests with these mouthwatering BBQ recipes perfect for summer gatherings.', '2024-08-22', '00:20:00', 15000, 800, 10, 2),
    (26, 'One-Pot Meals for Busy Days', 'Simplify your meal prep with these delicious one-pot recipes that are quick and easy to make.', '2024-09-10', '00:18:00', 18000, 1000, 12, 2),
    (27, 'Healthy Dessert Ideas', 'Indulge your sweet tooth guilt-free with these nutritious and tasty dessert recipes.', '2024-09-30', '00:15:00', 20000, 1200, 15, 2),
    (28, 'Yoga for Stress Relief', 'Relax and unwind with this calming yoga sequence designed to reduce stress and anxiety.', '2024-08-25', '00:25:00', 20000, 1200, 15, 3),
    (29, 'HIIT Cardio Workout', 'Get your heart pumping and torch calories with this high-intensity interval training cardio workout.', '2024-09-12', '00:20:00', 25000, 1500, 12, 3),
    (30, 'Healthy Snack Ideas', 'Snack smart with these nutritious and satisfying snack ideas that are perfect for fueling your workouts.', '2024-10-01', '00:10:00', 18000, 1000, 5, 3),
    (31, 'Hidden Gems: Off-the-Beaten-Path Destinations', 'Discover the lesser-known treasures and hidden gems waiting to be explored around the world.', '2024-08-28', '00:30:00', 25000, 1500, 20, 4),
    (32, 'Adventure Travel: Thrilling Experiences', 'Embark on adrenaline-pumping adventures and unforgettable experiences in some of the worlds most thrilling destinations.', '2024-09-15', '01:00:00', 30000, 2000, 25, 4),
    (33, 'Luxury Travel: Ultimate Getaways', 'Indulge in luxury and pampering with our guide to the most extravagant and luxurious travel destinations.', '2024-10-05', '00:45:00', 35000, 2500, 30, 4),
    (34, 'Watercolor Painting Tutorial: Floral Bouquet', 'Learn how to paint a beautiful floral bouquet in watercolor with this easy-to-follow tutorial.', '2024-08-30', '00:20:00', 30000, 1800, 10, 5),
    (35, 'Sculpting Clay Animals', 'Create adorable clay animals with our step-by-step sculpting tutorial perfect for beginners.', '2024-09-18', '00:25:00', 35000, 2000, 12, 5),
    (36, 'Street Photography Tips', 'Capture the energy and essence of the streets with these expert tips for street photography.', '2024-10-10', '00:15:00', 40000, 2300, 15, 5),
    (37, 'Gameplay: Call of Duty: Warzone', 'Join us for intense multiplayer action in Call of Duty: Warzone as we battle it out for victory.', '2024-09-02', '01:30:00', 40000, 2500, 30, 6),
    (38, 'Game Review: Elden Ring', 'Dive into the dark fantasy world of Elden Ring and discover if it lives up to the hype in our detailed review.', '2024-09-20', '00:45:00', 45000, 3000, 35, 6),
    (39, 'Speedrun: The Legend of Zelda: Breath of the Wild', 'Embark on a speedrunning adventure through Hyrule as we attempt to complete Breath of the Wild in record time.', '2024-10-15', '00:20:00', 50000, 3500, 40, 6),
    (40, 'DIY Room Decor Ideas', 'Transform your bedroom into a cozy retreat with these DIY room decor ideas that are both stylish and budget-friendly.', '2024-09-05', '00:25:00', 35000, 2000, 25, 7),
    (41, 'Repurposing Old Items', 'Give new life to old items and reduce waste with these creative ideas for repurposing household items.', '2024-09-25', '00:30:00', 38000, 2300, 28, 7),
    (42, 'Crafting with Recycled Materials', 'Reduce your carbon footprint and get creative with these eco-friendly crafting projects using recycled materials.', '2024-10-18', '00:15:00', 40000, 2500, 20, 7),
    (43, 'National Parks Exploration', 'Take a virtual tour of some of the most beautiful national parks around the world and discover their natural wonders.', '2024-09-08', '00:40:00', 40000, 2500, 30, 11),
    (44, 'Wildlife Documentary: African Safari', 'Experience the thrill of an African safari and witness the incredible wildlife that calls the savannah home.', '2024-09-25', '01:15:00', 45000, 3000, 35, 11),
    (45, 'Birdwatching Tips for Beginners', 'Get started with birdwatching and learn how to identify common bird species with these helpful tips.', '2024-10-10', '00:30:00', 50000, 3500, 40, 11),
    (46, 'Space Exploration: Journey to Mars', 'Embark on a virtual journey to the Red Planet and learn about the challenges and possibilities of human space exploration.', '2024-09-12', '00:45:00', 50000, 3000, 25, 12),
    (47, 'The Science of Climate Change', 'Explore the science behind climate change and its impact on our planet, ecosystems, and future.', '2024-09-30', '00:50:00', 55000, 3500, 30, 12),
    (48, 'Genetics and DNA: Unlocking the Code of Life', 'Discover the fascinating world of genetics and DNA and learn how they shape who we are.', '2024-10-15', '00:35:00', 60000, 4000, 35, 12),
    (49, 'Healthy Cooking Challenge', 'Join us as we take on the healthy cooking challenge and create nutritious and delicious meals.', '2024-09-15', '00:25:00', 45000, 2500, 20, 13),
    (50, 'Mindfulness Meditation for Beginners', 'Practice mindfulness meditation and learn how to cultivate awareness, presence, and inner peace.', '2024-09-30', '00:20:00', 50000, 3000, 25, 13),
    (51, 'Mental Health Q&A: Expert Advice', 'Get answers to common questions about mental health and well-being from our expert panel.', '2024-10-18', '00:30:00', 55000, 3500, 30, 13),
    (52, 'Productivity Hacks for Tech Enthusiasts', 'Boost your productivity with these time-saving hacks and tools tailored for tech enthusiasts.', '2024-09-18', '00:15:00', 30000, 2000, 15, 14),
    (53, 'Cybersecurity Basics: Protecting Your Devices', 'Learn the fundamentals of cybersecurity and how to keep your devices safe from online threats.', '2024-10-05', '00:20:00', 35000, 2500, 20, 14),
    (54, 'Future Tech Trends: Predictions for 2025', 'Explore the future of technology and discover the latest trends and innovations shaping the tech landscape.', '2024-10-20', '00:30:00', 40000, 3000, 25, 14),
    (55, 'International Street Food Tour', 'Join us on a culinary adventure as we explore the vibrant flavors of street food from around the world.', '2024-09-20', '00:45:00', 40000, 2500, 30, 15),
    (56, 'Baking Challenge: French Pastries', 'Challenge yourself with these classic French pastry recipes and master the art of baking.', '2024-10-08', '01:00:00', 45000, 3000, 35, 15),
    (57, 'Plant-Based Cooking: Delicious and Nutritious', 'Discover the joys of plant-based cooking with these flavorful and nutritious recipes for every meal.', '2024-10-25', '00:35:00', 50000, 3500, 40, 15),
    (58, 'Cultural Immersion: Living with Locals', 'Immerse yourself in local cultures and traditions by staying with locals during your travels.', '2024-09-22', '00:40:00', 45000, 2500, 20, 16),
    (59, 'Eco-Friendly Travel Tips', 'Reduce your environmental impact and travel sustainably with these eco-friendly travel tips and practices.', '2024-10-10', '00:25:00', 50000, 3000, 25, 16),
    (60, 'Solo Travel Adventures', 'Embark on solo travel adventures and discover the freedom and excitement of traveling alone.', '2024-10-28', '00:30:00', 55000, 3500, 30, 16),
    (61, 'Songwriting Masterclass: Creating Memorable Melodies', 'Learn the art of songwriting and create memorable melodies that captivate listeners.', '2024-09-25', '00:30:00', 40000, 2500, 30, 17),
    (62, 'Music Production Tutorial: Mixing and Mastering', 'Master the technical aspects of music production with this comprehensive tutorial on mixing and mastering.', '2024-10-12', '00:45:00', 45000, 3000, 35, 17),
    (63, 'Live Performance: Acoustic Session', 'Experience the magic of live music with this intimate acoustic performance featuring original songs and covers.', '2024-10-30', '00:40:00', 50000, 3500, 40, 17),
    (64, 'Stand-up Comedy: Laugh Factory', 'Get ready for a night of laughter with this hilarious stand-up comedy show featuring top comedians from around the world.', '2024-09-28', '01:00:00', 60000, 3500, 25, 18),
    (65, 'Sketch Comedy: Comedy Gold', 'Enjoy side-splitting sketches and comedic skits guaranteed to tickle your funny bone and leave you in stitches.', '2024-10-15', '00:45:00', 65000, 4000, 30, 18),
    (66, 'Funny Pets Compilation', 'Prepare for cuteness overload with this compilation of funny and adorable pet videos guaranteed to make you smile.', '2024-11-01', '00:20:00', 70000, 4500, 35, 18),
    (67, 'Fashion Trends: Fall/Winter Collection', 'Stay ahead of the fashion curve with this preview of the latest trends in fall and winter fashion.', '2024-09-30', '00:30:00', 50000, 3000, 20, 19),
    (68, 'Celebrity Style: Red Carpet Looks', 'Get inspired by the glamorous red carpet looks of your favorite celebrities and learn how to recreate them.', '2024-10-18', '00:45:00', 55000, 3500, 25, 19),
    (69, 'DIY Fashion Hacks', 'Upgrade your wardrobe with these creative DIY fashion hacks that will transform your old clothes into stylish new outfits.', '2024-11-05', '00:25:00', 60000, 4000, 30, 19),
    (70, 'Woodworking: Crafting a Handmade Chair', 'Witness the craftsmanship of woodworking as we build a beautiful handmade chair from scratch.', '2024-10-02', '00:40:00', 45000, 2500, 20, 20),
    (71, 'Pottery Making: Wheel Throwing Techniques', 'Experience the art of pottery making and learn the techniques of wheel throwing to create stunning ceramic pieces.', '2024-10-20', '00:35:00', 50000, 3000, 25, 20),
    (72, 'Jewelry Design: Wire Wrapping Basics', 'Discover the art of jewelry design with this beginner-friendly tutorial on wire wrapping techniques.', '2024-11-08', '00:30:00', 55000, 3500, 30, 20),
    (73, 'Metalworking: Crafting Custom Jewelry', 'Learn the art of metalworking and create stunning custom jewelry pieces with our step-by-step guide.', '2024-11-15', '00:45:00', 40000, 2800, 25, 20),
    (74, 'Glassblowing: Sculpting Beautiful Glass Art', 'Discover the mesmerizing art of glassblowing and sculpt breathtaking glass art pieces with our expert instruction.', '2024-12-01', '01:15:00', 45000, 3200, 30, 20),
    (75, 'Textile Design: Creating Unique Fabric Patterns', 'Unlock your creativity and design your own unique fabric patterns with our textile design tutorial.', '2024-12-18', '00:50:00', 50000, 3500, 35, 20),
    (76, 'DIY Home Decor: Upcycling Furniture Ideas', 'Give your home a makeover with these creative DIY furniture upcycling ideas that will breathe new life into old pieces.', '2024-11-10', '00:40:00', 35000, 2500, 20, 8),
    (77, 'DIY Gardening: Indoor Plant Care Tips', 'Transform your indoor space into a lush oasis with our indoor plant care tips and DIY gardening projects.', '2024-11-25', '00:35:00', 40000, 2800, 25, 8),
    (78, 'DIY Craft Projects for Kids', 'Keep the kids entertained with these fun and easy DIY craft projects that are perfect for children of all ages.', '2024-12-12', '00:30:00', 45000, 3200, 30, 8),
    (79, 'Latest Smartphone Reviews: Top Picks for 2025', 'Stay up-to-date on the latest smartphone releases and discover our top picks for the best smartphones of 2025.', '2024-11-12', '00:25:00', 30000, 2200, 15, 9),
    (80, 'Gadget Showcase: Must-Have Tech Accessories', 'Explore the coolest tech gadgets and accessories on the market with our gadget showcase featuring the latest tech innovations.', '2024-11-28', '00:30:00', 35000, 2500, 20, 9),
    (81, 'Tech News Roundup: Weekly Tech Updates', 'Get the latest tech news and updates with our weekly roundup covering the hottest trends, announcements, and breakthroughs in the tech industry.', '2024-12-15', '00:35:00', 40000, 2800, 25, 9),
    (82, 'Gaming News: Latest Updates and Announcements', 'Stay informed about the latest gaming news, updates, and announcements from the gaming industry.', '2024-11-15', '00:20:00', 25000, 1800, 10, 10),
    (83, 'Let''s Play: Retro Gaming Classics', 'Relive the nostalgia of classic retro games with our Let''s Play series featuring gameplay footage and commentary.', '2024-11-30', '00:45:00', 30000, 2000, 15, 10),
    (84, 'Gaming Tips and Tricks: Level Up Your Skills', 'Improve your gaming skills and strategies with our expert tips and tricks for mastering your favorite games.', '2024-12-18', '01:00:00', 35000, 2300, 20, 10),
    (85, 'DIY Fashion: Upcycled Clothing Ideas', 'Revamp your wardrobe with these stylish DIY fashion projects using upcycled materials and old clothing.', '2024-12-30', '00:35:00', 40000, 2800, 25, 8),
    (86, 'DIY Beauty: Natural Skincare Recipes', 'Treat your skin to natural goodness with our DIY skincare recipes using simple ingredients from your kitchen.', '2025-01-15', '00:30:00', 45000, 3200, 30, 8),
    (87, 'DIY Home Improvement: Budget Renovation Ideas', 'Transform your home on a budget with these DIY home improvement projects that add style and functionality to any space.', '2025-01-28', '00:45:00', 50000, 3500, 35, 8),
    (88, 'Tech Trends 2025: What''s Next in Technology?', 'Explore the future of technology with our predictions and insights into the emerging tech trends of 2025 and beyond.', '2024-12-20', '00:40:00', 35000, 2500, 20, 9),
    (89, 'Tech Gadgets Unboxing: Exciting Tech Revealed', 'Join us as we unbox the latest and greatest tech gadgets, from smartphones and laptops to smart home devices and wearables.', '2025-01-05', '00:25:00', 40000, 2800, 25, 9),
    (90, 'Tech Talk: In-Depth Discussions on Tech Topics', 'Dive deep into the world of technology with our expert-led discussions covering a wide range of tech topics, from AI and cybersecurity to digital privacy and more.', '2025-01-22', '00:50:00', 45000, 3200, 30, 9),
    (91, 'Gaming Review: Highly Anticipated Game Release', 'Get an in-depth review of the latest highly anticipated game release, including gameplay mechanics, graphics, story, and more.', '2024-12-25', '01:00:00', 30000, 2200, 15, 10),
    (92, 'Gameplay Walkthrough: Complete Game Guide', 'Follow along as we provide a comprehensive walkthrough of a popular game, guiding you through every level, boss fight, and hidden secrets.', '2025-01-10', '01:30:00', 35000, 2500, 20, 10),
    (93, 'Gaming Community Spotlight: Highlighting Player Creations', 'Celebrate the creativity of the gaming community with our spotlight series featuring player-created content, including mods, fan art, and more.', '2025-01-28', '00:45:00', 40000, 2800, 25, 10),
    (94, 'Future Tech: Innovations Shaping Tomorrow', 'Explore the cutting-edge technologies and innovations that are shaping the future of tech.', '2025-02-10', '00:40:00', 40000, 2800, 25, 1),
    (95, 'Tech Tips: Essential Skills for Tech Enthusiasts', 'Master essential skills and techniques for tech enthusiasts, from coding and programming to troubleshooting and networking.', '2025-02-25', '00:35:00', 45000, 3200, 30, 1),
    (96, 'Tech Reviews: Honest Reviews of Popular Gadgets', 'Get honest and unbiased reviews of popular gadgets and tech products to help you make informed buying decisions.', '2025-03-10', '00:50:00', 50000, 3500, 35, 1),
    (97, 'International Cuisine: Exploring Flavors of the World', 'Take a culinary journey around the world and explore the diverse flavors and dishes of international cuisine.', '2025-02-12', '00:45:00', 35000, 2500, 20, 2),
    (98, 'Healthy Desserts: Guilt-Free Treats for Sweet Tooths', 'Indulge your sweet tooth with these guilt-free dessert recipes that are both delicious and nutritious.', '2025-02-28', '00:30:00', 40000, 2800, 25, 2),
    (99, 'Cooking Basics: Essential Techniques for Home Cooks', 'Master the fundamental cooking techniques every home cook should know with our beginner-friendly cooking basics series.', '2025-03-15', '00:55:00', 45000, 3200, 30, 2),
    (100, 'Culinary Adventures: Street Food Around the World', 'Embark on a mouth-watering journey of street food delights from across the globe, from spicy tacos in Mexico to savory kebabs in Turkey.', '2025-02-20', '00:40:00', 40000, 2800, 25, 16),
    (101, 'Hidden Gems: Off the Beaten Path Travel Destinations', 'Discover hidden gems and off-the-beaten-path travel destinations that offer unique and unforgettable experiences.', '2025-03-05', '00:35:00', 45000, 3200, 30, 16),
    (102, 'Adventure Travel: Thrilling Experiences for Adrenaline Junkies', 'Get your adrenaline pumping with these exhilarating adventure travel experiences, from zip-lining through rainforests to bungee jumping off bridges.', '2025-03-20', '01:00:00', 50000, 3500, 35, 16),
    (103, 'Music Theory: Understanding Chords and Harmony', 'Gain a deeper understanding of music theory and learn about chords, harmony, and how they work together to create beautiful music.', '2025-02-25', '00:30:00', 35000, 2500, 20, 17),
    (104, 'Songwriting Inspiration: Finding Your Creative Muse', 'Unlock your songwriting potential and discover techniques for finding inspiration and overcoming creative blocks.', '2025-03-10', '00:45:00', 40000, 2800, 25, 17),
    (105, 'Live Concert: Intimate Acoustic Performance', 'Experience the magic of live music with this intimate acoustic performance featuring original songs and covers.', '2025-03-25', '01:15:00', 45000, 3200, 30, 17),
    (106, 'Comedy Special: Stand-Up Extravaganza', 'Prepare to laugh until your sides hurt with this hilarious stand-up comedy special featuring top comedians from around the world.', '2025-03-01', '01:30:00', 30000, 2200, 15, 18),
    (107, 'Sketch Comedy: Outrageous and Ridiculous Sketches', 'Get ready for outrageous and ridiculous laughs with this collection of sketch comedy sketches guaranteed to tickle your funny bone.', '2025-03-15', '00:55:00', 35000, 2500, 20, 18),
    (108, 'Funny Animal Videos: Adorable and Hilarious Moments', 'Brighten your day with this compilation of funny animal videos featuring adorable and hilarious moments from our furry friends.', '2025-03-30', '00:40:00', 40000, 2800, 25, 18),
    (109, 'Fashion Trends: Spring/Summer Collection', 'Stay ahead of the fashion curve with this preview of the latest trends in spring and summer fashion.', '2025-03-05', '00:45:00', 35000, 2500, 20, 19),
    (110, 'Celebrity Style: Red Carpet Fashion Moments', 'Get inspired by the glamorous red carpet looks of your favorite celebrities and learn how to recreate them.', '2025-03-20', '01:00:00', 40000, 2800, 25, 19),
    (111, 'DIY Fashion Accessories: Stylish Additions to Your Wardrobe', 'Elevate your style with these DIY fashion accessories that add a personal touch to any outfit.', '2025-04-05', '00:35:00', 45000, 3200, 30, 19),
    (112, 'Woodworking: Crafting Custom Furniture', 'Learn the art of woodworking and create beautiful custom furniture pieces for your home.', '2025-03-10', '00:50:00', 40000, 2800, 25, 20),
    (113, 'Pottery Making: Handcrafted Ceramics', 'Discover the therapeutic art of pottery making and create your own handcrafted ceramics with our step-by-step guide.', '2025-03-25', '01:15:00', 45000, 3200, 30, 20),
    (114, 'Leatherworking: Crafting Stylish Leather Goods', 'Master the craft of leatherworking and create stylish leather goods, from wallets and belts to bags and accessories.', '2025-04-10', '00:40:00', 50000, 3500, 35, 20),
    (115, 'Budget Travel Tips: How to Travel on a Shoestring', 'Discover insider tips and tricks for traveling on a budget without sacrificing comfort or experiences.', '2025-03-15', '00:30:00', 30000, 2200, 15, 3),
    (116, 'Travel Hacks: Clever Ways to Simplify Your Travels', 'Make your travels easier and more enjoyable with these clever travel hacks and packing tips.', '2025-03-30', '00:25:00', 35000, 2500, 20, 3),
    (117, 'Solo Travel Adventures: Embracing the Journey Alone', 'Embark on a solo travel adventure and discover the joys and challenges of traveling alone.', '2025-04-15', '00:40:00', 40000, 2800, 25, 3),
    (118, 'Full Body Workout: Total Body Toning Routine', 'Get a full-body workout and tone every muscle group with this comprehensive total body toning routine.', '2025-03-20', '00:45:00', 35000, 2500, 20, 4),
    (119, 'Yoga for Beginners: Gentle Flow for Stress Relief', 'Ease into yoga with this gentle flow sequence designed for beginners to relieve stress and promote relaxation.', '2025-04-05', '00:35:00', 40000, 2800, 25, 4),
    (120, 'HIIT Cardio: High Intensity Interval Training', 'Torch calories and boost your metabolism with this high-intensity interval training (HIIT) cardio workout.', '2025-04-20', '00:50:00', 45000, 3200, 30, 4),
    (121, 'Concert Highlights: Live Performances and Behind the Scenes', 'Relive the magic of live concerts with highlights and behind-the-scenes footage from the hottest music events.', '2025-03-25', '01:00:00', 40000, 2800, 25, 5),
    (122, 'Music Production: From Idea to Masterpiece', 'Gain insights into the music production process and learn how to turn your musical ideas into polished masterpieces.', '2025-04-10', '01:15:00', 45000, 3200, 30, 5),
    (123, 'Music Festivals: Epic Moments and Unforgettable Performances', 'Experience the energy and excitement of music festivals with highlights of epic moments and unforgettable performances.', '2025-04-25', '00:40:00', 50000, 3500, 35, 5),
    (124, 'Space Exploration: Journey to the Stars', 'Embark on a journey through space and explore the wonders of the cosmos, from distant galaxies to mysterious black holes.', '2025-04-01', '00:50:00', 35000, 2500, 20, 6),
    (125, 'Climate Change: Understanding the Science', 'Learn about the science behind climate change and its impact on our planet, ecosystems, and future.', '2025-04-15', '00:45:00', 40000, 2800, 25, 6),
    (126, 'Genetics and DNA: Unlocking the Code of Life', 'Delve into the fascinating world of genetics and DNA and discover how they shape who we are and our future.', '2025-04-30', '01:00:00', 45000, 3200, 30, 6),
    (127, 'Oil Painting Techniques: Mastering the Brush', 'Master the art of oil painting with techniques for creating stunning brushwork and captivating compositions.', '2025-04-05', '00:40:00', 30000, 2200, 15, 7),
    (128, 'Sculpture Workshop: From Clay to Masterpiece', 'Learn the fundamentals of sculpture and transform simple clay into intricate masterpieces with our step-by-step workshop.', '2025-04-20', '01:15:00', 35000, 2500, 20, 7),
    (129, 'Mixed Media Art: Exploring Creativity', 'Unlock your creativity with mixed media art and experiment with a variety of materials and techniques to create unique works of art.', '2025-05-05', '00:55:00', 40000, 2800, 25, 7),
    (130, 'DIY Home Decor: Creative Wall Art Ideas', 'Transform your space with these creative DIY wall art ideas that add personality and style to any room.', '2025-04-10', '00:35:00', 35000, 2500, 20, 8),
    (131, 'DIY Crafts: Fun Projects for Family Bonding', 'Get crafty with the family and create lasting memories with these fun DIY projects for all ages.', '2025-04-25', '00:30:00', 40000, 2800, 25, 8),
    (132, 'DIY Garden Projects: Enhancing Your Outdoor Space', 'Spruce up your outdoor space with these DIY garden projects that add beauty and functionality to your backyard.', '2025-05-10', '00:45:00', 45000, 3200, 30, 8),
    (133, 'Tech Innovations: Revolutionary Breakthroughs', 'Explore the latest tech innovations that are revolutionizing industries and shaping the future of technology.', '2025-04-15', '00:40:00', 30000, 2200, 15, 9),
    (134, 'Tech Gadgets: Must-Have Accessories for Tech Enthusiasts', 'Discover the coolest tech gadgets and accessories every tech enthusiast should own for work, play, and beyond.', '2025-04-30', '00:25:00', 35000, 2500, 20, 9),
    (135, 'Tech Trends: Predictions for the Future', 'Get insights into the future of technology with predictions and analysis of upcoming tech trends and developments.', '2025-05-15', '00:50:00', 40000, 2800, 25, 9),
    (136, 'Game Reviews: In-Depth Analysis of Latest Releases', 'Get in-depth reviews and analysis of the latest game releases, including gameplay mechanics, graphics, and story.', '2025-04-20', '00:50:00', 35000, 2500, 20, 10),
    (137, 'Gameplay Tips: Strategies for Dominating Your Favorite Games', 'Level up your gaming skills with expert tips and strategies for dominating your favorite games.', '2025-05-05', '00:45:00', 40000, 2800, 25, 10),
    (138, 'Gaming Community: Connecting Gamers Around the World', 'Join the gaming community and connect with fellow gamers from around the world to share experiences, tips, and tricks.', '2025-05-20', '01:00:00', 45000, 3200, 30, 10),
    (139, 'Healthy Living: Tips for a Balanced Lifestyle', 'Discover practical tips and advice for living a healthy and balanced lifestyle, from nutrition and exercise to mindfulness and self-care.', '2025-04-25', '00:40:00', 35000, 2500, 20, 11),
    (140, 'Mindful Meditation: Finding Inner Peace and Calm', 'Learn the art of mindful meditation and discover techniques for finding inner peace, reducing stress, and enhancing well-being.', '2025-05-10', '00:35:00', 40000, 2800, 25, 11),
    (141, 'Self-Improvement: Strategies for Personal Growth', 'Unlock your full potential with self-improvement strategies and techniques for personal growth and development.', '2025-05-25', '00:50:00', 45000, 3200, 30, 11),
    (142, 'National Parks: Exploring America''s Natural Treasures', 'Embark on a journey through America''s national parks and discover the breathtaking landscapes and diverse wildlife that call them home.', '2025-05-01', '00:50:00', 30000, 2200, 15, 12),
    (143, 'Wildlife Documentaries: Close Encounters with Nature', 'Experience close encounters with wildlife from around the world with captivating wildlife documentaries showcasing their behavior and habitats.', '2025-05-15', '01:15:00', 35000, 2500, 20, 12),
    (144, 'Nature Photography: Capturing the Beauty of the Outdoors', 'Learn the art of nature photography and capture the beauty of the great outdoors with tips and techniques from professional photographers.', '2025-05-30', '00:45:00', 40000, 2800, 25, 12),
    (145, 'DIY Home Renovation: Transforming Your Space', 'Revitalize your home with these DIY home renovation projects that add value and style to your living space.', '2025-05-05', '00:45:00', 35000, 2500, 20, 13),
    (146, 'Interior Design: Creating Stylish and Functional Interiors', 'Discover the principles of interior design and learn how to create stylish and functional interiors for every room in your home.', '2025-05-20', '01:00:00', 40000, 2800, 25, 13),
    (147, 'Outdoor Living Spaces: Creating Your Own Oasis', 'Transform your outdoor space into a relaxing oasis with these creative outdoor living space ideas and projects.', '2025-06-05', '00:35:00', 45000, 3200, 30, 13),
    (148, 'Tech News: Latest Updates and Innovations', 'Stay up-to-date on the latest tech news, updates, and innovations with our daily roundup of the hottest tech topics.', '2025-05-10', '00:40:00', 30000, 2200, 15, 14),
    (149, 'Cybersecurity: Protecting Your Digital World', 'Learn about the importance of cybersecurity and discover strategies for protecting your digital assets and personal information online.', '2025-05-25', '00:35:00', 35000, 2500, 20, 14),
    (150, 'Future Tech: Predictions for the Next Decade', 'Explore the future of technology with predictions and forecasts for the next decade, from AI and robotics to biotech and beyond.', '2025-06-10', '00:50:00', 40000, 2800, 25, 14),
    (151, 'Mindfulness Meditation: Cultivating Presence and Awareness', 'Cultivate presence and awareness in your daily life with mindfulness meditation practices that promote inner peace and well-being.', '2025-05-15', '00:45:00', 35000, 2500, 20, 15),
    (152, 'Holistic Health: Nurturing Body, Mind, and Spirit', 'Discover holistic approaches to health and wellness that nurture your body, mind, and spirit for optimal well-being.', '2025-05-30', '01:00:00', 40000, 2800, 25, 15),
    (153, 'Healthy Recipes: Nutritious and Delicious Meals', 'Whip up nutritious and delicious meals with our collection of healthy recipes that are easy to make and packed with flavor.', '2025-06-15', '00:35:00', 45000, 3200, 30, 15);
    
    --  inserting values into the Subscriptions table
INSERT INTO Subscriptions (subscriber_id, channel_id, subscription_date)
VALUES
    (1, 1, '2024-01-15'),  -- User 1 subscribing to Channel 1 on January 15, 2024
    (2, 3, '2024-02-20'),  -- User 2 subscribing to Channel 3 on February 20, 2024
    (3, 2, '2024-03-10'), -- User 3 subscribing to Channel 2 on March 10, 2024
    (4, 4, '2024-04-05'),  -- User 4 subscribing to Channel 4 on April 5, 2024
    (5, 5, '2024-05-10'),  -- User 5 subscribing to Channel 5 on May 10, 2024
    (6, 6, '2024-06-15'),  -- User 6 subscribing to Channel 6 on June 15, 2024
    (7, 7, '2024-07-20'),  -- User 7 subscribing to Channel 7 on July 20, 2024
    (8, 8, '2024-08-25'),  -- User 8 subscribing to Channel 8 on August 25, 2024
    (9, 9, '2024-09-30'),  -- User 9 subscribing to Channel 9 on September 30, 2024
    (10, 10, '2024-10-05'),  -- User 10 subscribing to Channel 10 on October 5, 2024
    (11, 11, '2024-11-10'),  -- User 11 subscribing to Channel 11 on November 10, 2024
    (12, 12, '2024-12-15'),  -- User 12 subscribing to Channel 12 on December 15, 2024
    (13, 13, '2025-01-20'),  -- User 13 subscribing to Channel 13 on January 20, 2025
    (14, 14, '2025-02-25'),  -- User 14 subscribing to Channel 14 on February 25, 2025
    (15, 15, '2025-03-30'),  -- User 15 subscribing to Channel 15 on March 30, 2025
    (16, 16, '2025-04-05'),  -- User 16 subscribing to Channel 16 on April 5, 2025
    (17, 17, '2025-05-10'),  -- User 17 subscribing to Channel 17 on May 10, 2025
    (18, 18, '2025-06-15'),  -- User 18 subscribing to Channel 18 on June 15, 2025
    (19, 19, '2025-07-20'),  -- User 19 subscribing to Channel 19 on July 20, 2025
    (20, 20, '2025-08-25'),  -- User 20 subscribing to Channel 20 on August 25, 2025
    (21, 1, '2025-09-30'),  -- User 21 subscribing to Channel 1 on September 30, 2025
    (22, 2, '2025-10-05'),  -- User 22 subscribing to Channel 2 on October 5, 2025
    (23, 3, '2025-11-10'),  -- User 23 subscribing to Channel 3 on November 10, 2025
    (24, 4, '2025-12-15'),  -- User 24 subscribing to Channel 4 on December 15, 2025
    (25, 5, '2026-01-20'),  -- User 25 subscribing to Channel 5 on January 20, 2026
    (26, 6, '2026-02-25'),  -- User 26 subscribing to Channel 6 on February 25, 2026
    (27, 7, '2026-03-30'),  -- User 27 subscribing to Channel 7 on March 30, 2026
    (28, 8, '2026-04-05'),  -- User 28 subscribing to Channel 8 on April 5, 2026
    (29, 9, '2026-05-10'),  -- User 29 subscribing to Channel 9 on May 10, 2026
    (30, 10, '2026-06-15'),  -- User 30 subscribing to Channel 10 on June 15, 2026
    (31, 11, '2026-07-20'),  -- User 31 subscribing to Channel 11 on July 20, 2026
    (32, 12, '2026-08-25'),  -- User 32 subscribing to Channel 12 on August 25, 2026
    (33, 13, '2026-09-30'),  -- User 33 subscribing to Channel 13 on September 30, 2026
    (34, 14, '2026-10-05'),  -- User 34 subscribing to Channel 14 on October 5, 2026
    (35, 15, '2026-11-10'),  -- User 35 subscribing to Channel 15 on November 10, 2026
    (36, 16, '2026-12-15'),  -- User 36 subscribing to Channel 16 on December 15, 2026
    (37, 17, '2027-01-20'),  -- User 37 subscribing to Channel 17 on January 20, 2027
    (38, 18, '2027-02-25'),  -- User 38 subscribing to Channel 18 on February 25, 2027
    (39, 19, '2027-03-30'),  -- User 39 subscribing to Channel 19 on March 30, 2027
    (40, 20, '2027-04-05'),  -- User 40 subscribing to Channel 20 on April 5, 2027
    (41, 1, '2027-05-10'),  -- User 41 subscribing to Channel 1 on May 10, 2027
    (42, 2, '2027-06-15'),  -- User 42 subscribing to Channel 2 on June 15, 2027
    (43, 3, '2027-07-20'),  -- User 43 subscribing to Channel 3 on July 20, 2027
    (44, 4, '2027-08-25'),  -- User 44 subscribing to Channel 4 on August 25, 2027
    (45, 5, '2027-09-30'),  -- User 45 subscribing to Channel 5 on September 30, 2027
    (46, 6, '2027-10-05'),  -- User 46 subscribing to Channel 6 on October 5, 2027
    (47, 7, '2027-11-10'),  -- User 47 subscribing to Channel 7 on November 10, 2027
    (48, 8, '2027-12-15'),  -- User 48 subscribing to Channel 8 on December 15, 2027
    (49, 9, '2028-01-20'),  -- User 49 subscribing to Channel 9 on January 20, 2028
    (50, 10, '2028-02-25'); -- User 50 subscribing to Channel 10 on February 25, 2028
INSERT INTO Subscriptions (subscriber_id, channel_id, subscription_date)
VALUES
    (51, 11, '2028-03-30'),  -- User 51 subscribing to Channel 11 on March 30, 2028
    (52, 12, '2028-04-05'),  -- User 52 subscribing to Channel 12 on April 5, 2028
    (53, 13, '2028-05-10'),  -- User 53 subscribing to Channel 13 on May 10, 2028
    (54, 14, '2028-06-15'),  -- User 54 subscribing to Channel 14 on June 15, 2028
    (55, 15, '2028-07-20'),  -- User 55 subscribing to Channel 15 on July 20, 2028
    (56, 16, '2028-08-25'),  -- User 56 subscribing to Channel 16 on August 25, 2028
    (57, 17, '2028-09-30'),  -- User 57 subscribing to Channel 17 on September 30, 2028
    (58, 18, '2028-10-05'),  -- User 58 subscribing to Channel 18 on October 5, 2028
    (59, 19, '2028-11-10'),  -- User 59 subscribing to Channel 19 on November 10, 2028
    (60, 20, '2028-12-15'),  -- User 60 subscribing to Channel 20 on December 15, 2028
    (61, 1, '2029-01-20'),  -- User 61 subscribing to Channel 1 on January 20, 2029
    (62, 2, '2029-02-25'),  -- User 62 subscribing to Channel 2 on February 25, 2029
    (63, 3, '2029-03-30'),  -- User 63 subscribing to Channel 3 on March 30, 2029
    (64, 4, '2029-04-05'),  -- User 64 subscribing to Channel 4 on April 5, 2029
    (65, 5, '2029-05-10'),  -- User 65 subscribing to Channel 5 on May 10, 2029
    (66, 6, '2029-06-15'),  -- User 66 subscribing to Channel 6 on June 15, 2029
    (67, 7, '2029-07-20'),  -- User 67 subscribing to Channel 7 on July 20, 2029
    (68, 8, '2029-08-25'),  -- User 68 subscribing to Channel 8 on August 25, 2029
    (69, 9, '2029-09-30'),  -- User 69 subscribing to Channel 9 on September 30, 2029
    (70, 10, '2029-10-05'); -- User 70 subscribing to Channel 10 on October 5, 2029
    
INSERT INTO Subscriptions (subscriber_id, channel_id, subscription_date)
VALUES
    (71, 11, '2029-11-10'),  -- User 71 subscribing to Channel 11 on November 10, 2029
    (72, 12, '2029-12-15'),  -- User 72 subscribing to Channel 12 on December 15, 2029
    (73, 13, '2030-01-20'),  -- User 73 subscribing to Channel 13 on January 20, 2030
    (74, 14, '2030-02-25'),  -- User 74 subscribing to Channel 14 on February 25, 2030
    (75, 15, '2030-03-30'),  -- User 75 subscribing to Channel 15 on March 30, 2030
    (76, 16, '2030-04-05'),  -- User 76 subscribing to Channel 16 on April 5, 2030
    (77, 17, '2030-05-10'),  -- User 77 subscribing to Channel 17 on May 10, 2030
    (78, 18, '2030-06-15'),  -- User 78 subscribing to Channel 18 on June 15, 2030
    (79, 19, '2030-07-20'),  -- User 79 subscribing to Channel 19 on July 20, 2030
    (80, 20, '2030-08-25'); -- User 80 subscribing to Channel 20 on August 25, 2030
    
    INSERT INTO Subscriptions (subscriber_id, channel_id, subscription_date)
VALUES
    (81, 1, '2030-09-30'),  -- User 81 subscribing to Channel 1 on September 30, 2030
    (82, 2, '2030-10-05'),  -- User 82 subscribing to Channel 2 on October 5, 2030
    (83, 3, '2030-11-10'),  -- User 83 subscribing to Channel 3 on November 10, 2030
    (84, 4, '2030-12-15'),  -- User 84 subscribing to Channel 4 on December 15, 2030
    (85, 5, '2031-01-20'),  -- User 85 subscribing to Channel 5 on January 20, 2031
    (86, 6, '2031-02-25'),  -- User 86 subscribing to Channel 6 on February 25, 2031
    (87, 7, '2031-03-30'),  -- User 87 subscribing to Channel 7 on March 30, 2031
    (88, 8, '2031-04-05'),  -- User 88 subscribing to Channel 8 on April 5, 2031
    (89, 9, '2031-05-10'),  -- User 89 subscribing to Channel 9 on May 10, 2031
    (90, 10, '2031-06-15'),  -- User 90 subscribing to Channel 10 on June 15, 2031
    (91, 11, '2031-07-20');  -- User 91 subscribing to Channel 11 on July 20, 2031
    
-- Example of inserting values into the Comments table
INSERT INTO Comments (comment_id, video_id, channel_id, comment_text, comment_date)
VALUES
    (1, 1, 1, 'Great video, very informative!', '2024-01-15 08:30:00'),  -- Comment 1 on Video 1 by Channel 1 on January 15, 2024 at 08:30 AM
    (2, 1, 2, 'I love this recipe! Cant wait to try it.', '2024-01-16 10:45:00'),  -- Comment 2 on Video 1 by Channel 2 on January 16, 2024 at 10:45 AM
    (3, 2, 3, 'Awesome workout routine, thanks for sharing!', '2024-02-05 14:20:00'),  -- Comment 3 on Video 2 by Channel 3 on February 5, 2024 at 02:20 PM
    (4, 2, 4, 'This dish looks delicious! Im definitely trying it out tonight.', '2024-02-10 18:00:00'),  -- Comment 4 on Video 2 by Channel 4 on February 10, 2024 at 06:00 PM
    (5, 3, 5, 'Stunning scenery! Cant wait to visit this place.', '2024-02-20 12:30:00'),  -- Comment 5 on Video 3 by Channel 5 on February 20, 2024 at 12:30 PM
    (6, 4, 6, 'Hilarious video! I laughed so hard.', '2024-03-05 20:15:00'),  -- Comment 6 on Video 4 by Channel 6 on March 5, 2024 at 08:15 PM
    (7, 5, 7, 'Amazing DIY project, Im inspired to try it myself!', '2024-03-10 09:45:00'),  -- Comment 7 on Video 5 by Channel 7 on March 10, 2024 at 09:45 AM
    (8, 6, 8, 'Incredible music production tutorial! Thank you for sharing your knowledge.', '2024-03-20 15:00:00'),  -- Comment 8 on Video 6 by Channel 8 on March 20, 2024 at 03:00 PM
    (9, 7, 9, 'This comedy sketch had me in stitches! Brilliant!', '2024-04-01 21:30:00'),  -- Comment 9 on Video 7 by Channel 9 on April 1, 2024 at 09:30 PM
    (10, 8, 10, 'Great fashion tips, Im revamping my wardrobe with these ideas.', '2024-04-10 11:00:00'),  -- Comment 10 on Video 8 by Channel 10 on April 10, 2024 at 11:00 AM
    (11, 9, 11, 'I love the nature footage, its so serene and beautiful.', '2024-04-15 14:45:00'),  -- Comment 11 on Video 9 by Channel 11 on April 15, 2024 at 02:45 PM
    (12, 10, 12, 'Mind-blowing science experiment! Cant wait to try it myself.', '2024-04-20 16:20:00'),  -- Comment 12 on Video 10 by Channel 12 on April 20, 2024 at 04:20 PM
    (13, 11, 13, 'Very informative health advice, Ill incorporate these tips into my routine.', '2024-05-01 08:00:00'),  -- Comment 13 on Video 11 by Channel 13 on May 1, 2024 at 08:00 AM
    (14, 12, 14, 'Im learning so much from your tech tutorials, thank you!', '2024-05-05 10:30:00'),  -- Comment 14 on Video 12 by Channel 14 on May 5, 2024 at 10:30 AM
    (15, 13, 15, 'This fusion recipe is a game-changer! My taste buds are in heaven.', '2024-05-10 19:15:00'),  -- Comment 15 on Video 13 by Channel 15 on May 10, 2024 at 07:15 PM
    (16, 14, 16, 'Your travel guides are inspiring me to plan my next adventure!', '2024-05-15 14:00:00'),  -- Comment 16 on Video 14 by Channel 16 on May 15, 2024 at 02:00 PM
    (17, 15, 17, 'Im picking up so many music production tips from your tutorials, thank you!', '2024-05-20 11:45:00'),  -- Comment 17 on Video 15 by Channel 17 on May 20, 2024 at 11:45 AM
    (18, 16, 18, 'Engaging discussion on the latest tech trends, keep it up!', '2024-05-25 16:30:00'),  -- Comment 18 on Video 16 by Channel 18 on May 25, 2024 at 04:30 PM
    (19, 17, 19, 'Your workout routines are helping me stay fit and motivated, thank you!', '2024-06-01 07:00:00'),  -- Comment 19 on Video 17 by Channel 19 on June 1, 2024 at 07:00 AM
    (20, 18, 20, 'Im loving your artisanal projects, theyre so creative and inspiring.', '2024-06-05 13:45:00'),  -- Comment 20 on Video 18 by Channel 20 on June 5, 2024 at 01:45 PM
    (21, 19, 1, 'Great video! I learned a lot about technology advancements.', '2024-06-10 09:30:00'),  -- Comment 21 on Video 19 by Channel 1 on June 10, 2024 at 09:30 AM
    (22, 20, 2, 'Your cooking tutorials are changing my kitchen game!', '2024-06-15 12:15:00'),  -- Comment 22 on Video 20 by Channel 2 on June 15, 2024 at 12:15 PM
    (23, 21, 3, 'This workout routine is exactly what I needed to kickstart my fitness journey.', '2024-06-20 18:00:00'),  -- Comment 23 on Video 21 by Channel 3 on June 20, 2024 at 06:00 PM
    (24, 22, 4, 'Your travel vlogs make me want to pack my bags and explore!', '2024-06-25 11:00:00'),  -- Comment 24 on Video 22 by Channel 4 on June 25, 2024 at 11:00 AM
    (25, 23, 5, 'As an artist, I find your content incredibly inspiring. Keep it up!', '2024-07-01 14:30:00'),  -- Comment 25 on Video 23 by Channel 5 on July 1, 2024 at 02:30 PM
    (26, 24, 6, 'Your gaming walkthroughs are helping me improve my skills, thanks!', '2024-07-05 17:45:00'),  -- Comment 26 on Video 24 by Channel 6 on July 5, 2024 at 05:45 PM
    (27, 25, 7, 'I tried out your DIY project and it turned out amazing! Thanks for the tutorial.', '2024-07-10 10:00:00'),  -- Comment 27 on Video 25 by Channel 7 on July 10, 2024 at 10:00 AM
    (28, 26, 8, 'Your music covers are so soulful, they always brighten my day.', '2024-07-15 15:20:00'),  -- Comment 28 on Video 26 by Channel 8 on July 15, 2024 at 03:20 
    (29, 27, 9, 'I couldnt stop laughing at your comedy sketch, its pure gold!', '2024-07-20 19:45:00'),  -- Comment 29 on Video 27 by Channel 9 on July 20, 2024 at 07:45 PM
    (30, 28, 10, 'Your fashion tips are so trendy, Im revamping my wardrobe with your advice.', '2024-07-25 11:30:00'),  -- Comment 30 on Video 28 by Channel 10 on July 25, 2024 at 11:30 AM
    (31, 29, 11, 'The nature footage in this video is breathtaking, I could watch it all day.', '2024-08-01 13:00:00'),  -- Comment 31 on Video 29 by Channel 11 on August 1, 2024 at 01:00 PM
    (32, 30, 12, 'Your science experiments are so cool, they make me want to become a scientist!', '2024-08-05 16:45:00'),  -- Comment 32 on Video 30 by Channel 12 on August 5, 2024 at 04:45 PM
    (33, 31, 13, 'These health tips are invaluable, thank you for sharing your expertise.', '2024-08-10 08:30:00'),  -- Comment 33 on Video 31 by Channel 13 on August 10, 2024 at 08:30 AM
    (34, 32, 14, 'Your tech tutorials are helping me understand complex concepts easily. Great work!', '2024-08-15 10:15:00'),  -- Comment 34 on Video 32 by Channel 14 on August 15, 2024 at 10:15 AM
    (35, 33, 15, 'I tried your fusion recipe and it was a hit with my family! Thanks for the delicious idea.', '2024-08-20 12:00:00'),  -- Comment 35 on Video 33 by Channel 15 on August 20, 2024 at 12:00 PM
    (36, 34, 16, 'Your travel guides are making me want to book my next vacation immediately!', '2024-08-25 14:30:00'),  -- Comment 36 on Video 34 by Channel 16 on August 25, 2024 at 02:30 PM
    (37, 35, 17, 'Your music lessons are so helpful, Im improving my skills every day.', '2024-09-01 09:45:00'),  -- Comment 37 on Video 35 by Channel 17 on September 1, 2024 at 09:45 AM
    (38, 36, 18, 'I love your tech discussions, theyre so informative and engaging.', '2024-09-05 11:15:00'),  -- Comment 38 on Video 36 by Channel 18 on September 5, 2024 at 11:15 AM
    (39, 37, 19, 'Your workout routines are challenging but effective. Im seeing results already!', '2024-09-10 17:00:00'),  -- Comment 39 on Video 37 by Channel 19 on September 10, 2024 at 05:00 PM
    (40, 38, 20, 'Your artisanal projects are inspiring me to get creative. Thank you for sharing!', '2024-09-15 13:30:00'),  -- Comment 40 on Video 38 by Channel 20 on September 15, 2024 at 01:30 PM
    (41, 39, 1, 'This video review helped me make an informed tech purchase. Thanks for the detailed analysis.', '2024-09-20 08:15:00'),  -- Comment 41 on Video 39 by Channel 1 on September 20, 2024 at 08:15 AM
    (42, 40, 2, 'Your cooking tutorials are so easy to follow, even for a beginner like me. Thanks!', '2024-09-25 10:00:00'),  -- Comment 42 on Video 40 by Channel 2 on September 25, 2024 at 10:00 AM
    (43, 41, 3, 'Your workout routines are keeping me motivated on my fitness journey. Thank you!', '2024-09-30 16:45:00'),  -- Comment 43 on Video 41 by Channel 3 on September 30, 2024 at 04:45 PM
    (44, 42, 4, 'Your travel vlogs are making me want to pack my bags and explore the world. Thanks for the inspiration!', '2024-10-05 12:30:00'),  -- Comment 44 on Video 42 by Channel 4 on October 5, 2024 at 12:30 PM
    (45, 43, 5, 'As an artist, your content resonates with me deeply. Keep up the amazing work!', '2024-10-10 14:00:00'),  -- Comment 45 on Video 43 by Channel 5 on October 10, 2024 at 02:00 PM
    (46, 44, 6, 'Your gaming walkthroughs are helping me improve my skills. Thanks for the tips!', '2024-10-15 18:15:00'),  -- Comment 46 on Video 44 by Channel 6 on October 15, 2024 at 06:15 PM
    (47, 45, 7, 'I tried your DIY project and it turned out great! Thanks for the detailed tutorial.', '2024-10-20 11:30:00'),  -- Comment 47 on Video 45 by Channel 7 on October 20, 2024 at 11:30 AM
    (48, 46, 8, 'Your music covers always bring a smile to my face. Keep making beautiful music!', '2024-10-25 16:45:00'),  -- Comment 48 on Video 46 by Channel 8 on October 25, 2024 at 04:45 PM
    (49, 47, 9, 'Your comedy sketches are hilarious! I cant get enough of your content.', '2024-10-30 20:00:00'),  -- Comment 49 on Video 47 by Channel 9 on October 30, 2024 at 08:00 PM
    (50, 48, 10, 'Your fashion tips are so trendy and practical. Thanks for keeping us stylish!', '2024-11-05 09:15:00');  -- Comment 50 on Video 48 by Channel 10 on November 5, 2024 at 09:15 AM

INSERT INTO Users (user_id,username, email, password, registration_date)
VALUES
    (1,'johndoe123', 'johndoe123@example.com', 'password123', '2024-01-01'),
    (2,'janedoe456', 'janedoe456@example.com', 'password456', '2024-01-02'),
    (3,'alexsmith789', 'alexsmith789@example.com', 'password789', '2024-01-03'),
    (4,'emilybrown123', 'emilybrown123@example.com', 'password123', '2024-01-04'),
    (5,'michaelscott456', 'michaelscott456@example.com', 'password456', '2024-01-05'),
    (6,'amandajohnson789', 'amandajohnson789@example.com', 'password789', '2024-01-06'),
    (7,'davidlee123', 'davidlee123@example.com', 'password123', '2024-01-07'),
    (8,'sarahwilliams456', 'sarahwilliams456@example.com', 'password456', '2024-01-08'),
    (9,'chriscarter789', 'chriscarter789@example.com', 'password789', '2024-01-09'),
    (10,'rachelgreen123', 'rachelgreen123@example.com', 'password123', '2024-01-10'),
    (11,'michaeljones456', 'michaeljones456@example.com', 'password456', '2024-01-11'),
    (12,'samanthasmith789', 'samanthasmith789@example.com', 'password789', '2024-01-12'),
    (13,'matthewdavis123', 'matthewdavis123@example.com', 'password123', '2024-01-13'),
    (14,'laurenwhite456', 'laurenwhite456@example.com', 'password456', '2024-01-14'),
    (15,'justinbrown789', 'justinbrown789@example.com', 'password789', '2024-01-15'),
    (16,'ashleytaylor123', 'ashleytaylor123@example.com', 'password123', '2024-01-16'),
    (17,'brandonmartinez456', 'brandonmartinez456@example.com', 'password456', '2024-01-17'),
    (18,'jessicahernandez789', 'jessicahernandez789@example.com', 'password789', '2024-01-18'),
    (19,'danielrobinson123', 'danielrobinson123@example.com', 'password123', '2024-01-19'),
    (20,'melissawood456', 'melissawood456@example.com', 'password456', '2024-01-20'),
    (21,'ericcooper789', 'ericcooper789@example.com', 'password789', '2024-01-21'),
    (22,'kimberlylewis123', 'kimberlylewis123@example.com', 'password123', '2024-01-22'),
    (23,'joshuagarcia456', 'joshuagarcia456@example.com', 'password456', '2024-01-23'),
    (24,'stephaniehall789', 'stephaniehall789@example.com', 'password789', '2024-01-24'),
    (25,'johnnycampbell123', 'johnnycampbell123@example.com', 'password123', '2024-01-25'),
    (26,'catherinehill456', 'catherinehill456@example.com', 'password456', '2024-01-26'),
    (27,'nathansullivan789', 'nathansullivan789@example.com', 'password789', '2024-01-27'),
    (28,'ameliarivera123', 'ameliarivera123@example.com', 'password123', '2024-01-28'),
    (29,'charlesperez456', 'charlesperez456@example.com', 'password456', '2024-01-29'),
    (30,'hannahpowell789', 'hannahpowell789@example.com', 'password789', '2024-01-30'),
    (31,'georgecollins123', 'georgecollins123@example.com', 'password123', '2024-01-31'),
    (32,'ashleymurphy456', 'ashleymurphy456@example.com', 'password456', '2024-02-01'),
    (33,'oliviacooper789', 'oliviacooper789@example.com', 'password789', '2024-02-02'),
    (34,'davidramirez123', 'davidramirez123@example.com', 'password123', '2024-02-03'),
    (35,'emilygonzalez456', 'emilygonzalez456@example.com', 'password456', '2024-02-04'),
    (36,'jamesrodriguez789', 'jamesrodriguez789@example.com', 'password789', '2024-02-05'),
    (37,'madisonstewart123', 'madisonstewart123@example.com', 'password123', '2024-02-06'),
    (38,'michaelprice456', 'michaelprice456@example.com', 'password456', '2024-02-07'),
    (39,'olivialopez789', 'olivialopez789@example.com', 'password789', '2024-02-08'),
    (40,'michaelwilson123', 'michaelwilson123@example.com', 'password123', '2024-02-09'),
    (41,'emilyjames456', 'emilyjames456@example.com', 'password456', '2024-02-10'),
    (42,'josephthomas789', 'josephthomas789@example.com', 'password789', '2024-02-11'),
    (43,'sophiajohnson123', 'sophiajohnson123@example.com', 'password123', '2024-02-12'),
    (44,'alexandergarcia456', 'alexandergarcia456@example.com', 'password456', '2024-02-13'),
    (45,'kaylamartinez789', 'kaylamartinez789@example.com', 'password789', '2024-02-14'),
    (46,'williamlopez123', 'williamlopez123@example.com', 'password123', '2024-02-15'),
    (47,'jennifercollins456', 'jennifercollins456@example.com', 'password456', '2024-02-16'),
    (48,'williamwalker123', 'williamwalker123@example.com', 'password123', '2024-02-27'),
    (49,'williamjames789', 'williamjames789@example.com', 'password789', '2024-02-17'),
    (50,'sophiawilson123', 'sophiawilson123@example.com', 'password123', '2024-02-18'),
    (51,'ethanmartinez456', 'ethanmartinez456@example.com', 'password456', '2024-02-19'),
    (52,'emilyrodriguez789', 'emilyrodriguez789@example.com', 'password789', '2024-02-20'),
    (53,'jacobhernandez123', 'jacobhernandez123@example.com', 'password123', '2024-02-21'),
    (54,'isabellathomas456', 'isabellathomas456@example.com', 'password456', '2024-02-22'),
    (55,'davidjackson789', 'davidjackson789@example.com', 'password789', '2024-02-23'),
    (56,'sophianelson123', 'sophianelson123@example.com', 'password123', '2024-02-24'),
    (57,'loganroberts456', 'loganroberts456@example.com', 'password456', '2024-02-25'),
    (58,'oliviarobinson789', 'oliviarobinson789@example.com', 'password789', '2024-02-26'),
    (59,'williamwalker123', 'williamwalker123@example.com', 'password123', '2024-02-27'),
    (60,'madisonpeterson456', 'madisonpeterson456@example.com', 'password456', '2024-02-28'),
    (61,'jacobmorales789', 'jacobmorales789@example.com', 'password789', '2024-02-29'),
    (62,'charlottehill123', 'charlottehill123@example.com', 'password123', '2024-03-01'),
    (63,'lucassanchez456', 'lucassanchez456@example.com', 'password456', '2024-03-02'),
    (64,'ameliajames789', 'ameliajames789@example.com', 'password789', '2024-03-03'),
    (65,'masonstewart123', 'masonstewart123@example.com', 'password123', '2024-03-04'),
    (66,'harperflores456', 'harperflores456@example.com', 'password456', '2024-03-05'),
    (67,'emilyrivera789', 'emilyrivera789@example.com', 'password789', '2024-03-06'),
    (68,'jackcampbell123', 'jackcampbell123@example.com', 'password123', '2024-03-07'),
    (69,'avawood456', 'avawood456@example.com', 'password456', '2024-03-08'),
    (70,'michaellong789', 'michaellong789@example.com', 'password789', '2024-03-09'),
    (71,'chloecox123', 'chloecox123@example.com', 'password123', '2024-03-10'),
    (72,'jacobprice456', 'jacobprice456@example.com', 'password456', '2024-03-11'),
    (73,'sophiamartinez789', 'sophiamartinez789@example.com', 'password789', '2024-03-12'),
    (74,'miamorgan123', 'miamorgan123@example.com', 'password123', '2024-03-13'),
    (75,'lucasgonzalez456', 'lucasgonzalez456@example.com', 'password456', '2024-03-14'),
    (76,'isabellamorris789', 'isabellamorris789@example.com', 'password789', '2024-03-15'),
    (77,'noahrodriguez123', 'noahrodriguez123@example.com', 'password123', '2024-03-16'),
    (78,'emilyramirez456', 'emilyramirez456@example.com', 'password456', '2024-03-17'),
    (79,'jacksonmurphy789', 'jacksonmurphy789@example.com', 'password789', '2024-03-18'),
    (80,'oliviaadams123', 'oliviaadams123@example.com', 'password123', '2024-03-19'),
    (81,'williambell456', 'williambell456@example.com', 'password456', '2024-03-20'),
    (82,'elizabethcook789', 'elizabethcook789@example.com', 'password789', '2024-03-21'),
    (83,'masoncooper123', 'masoncooper123@example.com', 'password123', '2024-03-22'),
    (84,'victoriaedwards456', 'victoriaedwards456@example.com', 'password456', '2024-03-23'),
    (85,'charleslee789', 'charleslee789@example.com', 'password789', '2024-03-24'),
    (86,'sophiagreen123', 'sophiagreen123@example.com', 'password123', '2024-03-25'),
    (87,'josephcollins456', 'josephcollins456@example.com', 'password456', '2024-03-26'),
    (88,'isabellawood789', 'isabellawood789@example.com', 'password789', '2024-03-27'),
    (89,'ethanperez123', 'ethanperez123@example.com', 'password123', '2024-03-28'),
    (90,'emilygonzalez456', 'emilygonzalez456@example.com', 'password456', '2024-03-29'),
    (91,'joshuamitchell789', 'joshuamitchell789@example.com', 'password789', '2024-03-30');
    
    
	-- Problem statement and queries
-- 1st Retrieve the titles and upload dates of the latest 10 videos uploaded to the platform
   
SELECT title, upload_date FROM Videos ORDER BY upload_date DESC LIMIT 50;
  
-- 2nd Find the total number of comments made on videos uploaded by the channel with the name "TechGuru."
 
SELECT COUNT(Comments.comment_id) AS total_comments
FROM Comments
JOIN Videos ON Comments.video_id = Videos.video_id
JOIN Channels ON Videos.channel_id = Channels.channel_id
WHERE Channels.name = 'TechGuru';

-- 3rd Calculate the average duration of videos uploaded by the channel named "CookingWorld."

SELECT AVG(TIME_TO_SEC(duration)) AS average_duration_seconds
FROM Videos
JOIN Channels ON Videos.channel_id = Channels.channel_id
WHERE Channels.name = 'CookingWorld';

-- 4th To list the top 5 channels with the highest number of subscribers, you can use the following SQL query

select channel_id,Subscribes from channels order by Subscribes desc limit 5;

 -- 5th Identify the most liked video on the platform along with its title and number of likes.
 
 SELECT v.title AS video_title, v.likes AS number_of_likes
FROM Videos v
WHERE v.likes = (SELECT MAX(likes) FROM Videos);

 -- 6th List the usernames of users who have subscribed to the channel named "FitnessFreaks."
 
 SELECT DISTINCT Users.username
FROM Users
JOIN Subscriptions ON Users.user_id = Subscriptions.subscriber_id
JOIN Channels ON Subscriptions.channel_id = Channels.channel_id
WHERE Channels.name = 'FitnessFreaks';

 -- 7th Retrieve the titles of videos with more dislikes than likes.
 
 SELECT title
FROM Videos
WHERE dislikes > likes;

 -- 8th List the usernames of users who have commented on videos uploaded by the channel named "Top 10 Gadgets of 2024."
 
 SELECT DISTINCT Users.username
FROM Users
JOIN Comments ON Users.user_id = Comments.channel_id
JOIN Videos ON Comments.video_id = Videos.video_id
JOIN Channels ON Videos.channel_id = Channels.channel_id
WHERE Channels.name = 'Top 10 Gadgets of 2024';

  
-- 9th Calculate the total duration of all videos uploaded to the platform.

SELECT SEC_TO_TIME(SUM(TIME_TO_SEC(duration))) AS total_duration
FROM Videos;

     -- Triggers
-- 10th Whenever a new subscription is added to a channel, the trigger should detect this event.

delimiter //
CREATE TRIGGER new_subscription_trigger
AFTER INSERT ON Subscriptions
FOR EACH ROW
BEGIN
    -- Trigger body
    -- Insert your logic here
END;
//


