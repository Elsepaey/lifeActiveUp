import 'package:get/get.dart';

class MuscleController extends GetxController{
  Map<String, Map<String, dynamic>> muscles = {
    'Chest': {
      'Function': 'Primary function is to flex, adduct, and medially rotate the arm at the shoulder joint.',
      'Origin and Insertion':
      'Pectoralis Major: Originates from the clavicle, sternum, and costal cartilages of the ribs and inserts into the humerus.\n'
          'Pectoralis Minor: Originates from the third, fourth, and fifth ribs and inserts into the coracoid process of the scapula.',
      'Innervation': 'Pectoralis Major: Innervated by the medial and lateral pectoral nerves (C5-T1).\n'
          'Pectoralis Minor: Innervated by the medial pectoral nerve (C8, T1).',
      'Blood Supply':
      'Primarily supplied by the pectoral branch of the thoracoacromial artery and the lateral thoracic artery.',
      'Common Injuries':
      'Strains or tears from overuse or improper lifting techniques.\nCostochondritis (inflammation of the cartilage that connects the ribs to the sternum).',
      'Exercises':
      'Pectoralis Major: Bench press, push-ups, chest flyes, dips.\n'
          'Pectoralis Minor: Scapular protraction exercises, chest stretches.',
      'Nutrition and Supplements':
      'Adequate protein intake is essential for muscle repair and recovery.\n'
          'Supplements like creatine may support muscle strength and growth when combined with resistance training.'
    },
    'Biceps': {
      'Function':
      'Primary function is flexion of the elbow and supination of the forearm.',
      'Origin and Insertion':
      'Originates from the scapula and inserts into the radius bone of the forearm.',
      'Innervation': 'Innervated by the musculocutaneous nerve (C5-C6).',
      'Blood Supply': 'Supplied by branches of the brachial artery.',
      'Common Injuries':
      'Strains from lifting heavy weights or overuse.\nTendonitis (inflammation of the tendon) at the attachment points.',
      'Exercises':
      'Bicep curls, hammer curls, chin-ups, and pull-ups.',
      'Nutrition and Supplements':
      'Protein-rich diet to support muscle recovery and growth.\nSupplements like BCAAs may aid in muscle recovery.'
    },
    'Traps': {
      'Function':
      'Elevate, depress, retract, and rotate the scapulae. Also assist in neck extension and lateral flexion.',
      'Origin and Insertion':
      'Originates from the base of the skull, the spine of the upper thoracic vertebrae, and the medial part of the clavicle. Inserts into the scapulae and the cervical vertebrae.',
      'Innervation': 'Innervated by the accessory nerve (CN XI) and branches of cervical spinal nerves (C3-C4).',
      'Blood Supply': 'Supplied by branches of the subclavian artery.',
      'Common Injuries':
      'Strains from poor posture or overuse.\nTrapezius myalgia, a chronic condition characterized by muscle pain and stiffness.',
      'Exercises':
      'Shrugs, upright rows, dumbbell rows, and face pulls.',
      'Nutrition and Supplements':
      'A balanced diet rich in vitamins and minerals to support overall muscle health.\nSupplements like magnesium and vitamin B12 may help reduce muscle tension.'
    },
    'Shoulders': {
      'Function':
      'Allow for a wide range of motion at the shoulder joint, including flexion, extension, abduction, adduction, and rotation.',
      'Origin and Insertion':
      'Comprised of multiple muscles including the deltoid, rotator cuff muscles (supraspinatus, infraspinatus, teres minor, subscapularis), and others.\nThese muscles originate from the scapula, clavicle, and humerus and insert into various points around the shoulder joint.',
      'Innervation': 'Innervated by branches of the brachial plexus, including the axillary nerve, suprascapular nerve, and branches of the posterior cord.',
      'Blood Supply': 'Supplied by branches of the subclavian and axillary arteries.',
      'Common Injuries':
      'Rotator cuff tears, shoulder impingement, shoulder dislocation, and frozen shoulder.\nStrains or tears of the deltoid muscle.',
      'Exercises':
      'Shoulder press, lateral raises, front raises, reverse flyes, external and internal rotation exercises.',
      'Nutrition and Supplements':
      'A balanced diet rich in antioxidants and anti-inflammatory nutrients to support joint health.\nSupplements like glucosamine and chondroitin may support cartilage health and reduce joint pain.'
    },
    'Hamstrings': {
      'Function':
      'Primary function is knee flexion and hip extension, as well as assisting in knee rotation.',
      'Origin and Insertion':
      'Comprised of three muscles: biceps femoris, semitendinosus, and semimembranosus.\nOriginate from the ischial tuberosity (sit bone) of the pelvis and insert into various points on the tibia and fibula bones of the lower leg.',
      'Innervation': 'Innervated by the sciatic nerve, specifically its tibial division.',
      'Blood Supply': 'Supplied by branches of the femoral and popliteal arteries.',
      'Common Injuries':
      'Hamstring strains or tears, often resulting from sudden acceleration or deceleration movements.\nTendonitis or tendinopathy at the insertion points of the hamstrings.',
      'Exercises':
      'Deadlifts, Romanian deadlifts, hamstring curls, glute-ham raises, and lunges.',
      'Nutrition and Supplements':
      'Adequate protein intake to support muscle repair and recovery.\nSupplements like collagen peptides may support tendon and ligament health.'
    },
    'Calves': {
      'Function':
      'Primary function is plantar flexion of the foot (pointing the toes downward) and assisting in knee flexion.',
      'Origin and Insertion':
      'Comprised of two muscles: gastrocnemius and soleus.\nGastrocnemius originates from the femur and inserts into the calcaneus (heel bone).\nSoleus originates from the tibia and fibula bones and also inserts into the calcaneus.',
      'Innervation': 'Innervated by the tibial nerve.',
      'Blood Supply': 'Supplied by branches of the popliteal artery.',
      'Common Injuries':
      'Calf strains or tears, often resulting from explosive movements or overuse.\nAchilles tendinopathy or tendinitis at the insertion point of the Achilles tendon.',
      'Exercises':
      'Calf raises, seated calf raises, calf presses, and skipping or jumping exercises.',
      'Nutrition and Supplements':
      'A balanced diet with adequate hydration to prevent muscle cramps.\nElectrolyte supplements may be beneficial for individuals prone to muscle cramps or dehydration.'
    },
    'Glutes': {
      'Function':
      'Primary function is hip extension and external rotation, as well as abduction and stabilization of the pelvis and spine.',
      'Origin and Insertion':
      'Comprised of three muscles: gluteus maximus, gluteus medius, and gluteus minimus.\nGluteus maximus originates from the ilium and sacrum and inserts into the femur.\nGluteus medius and minimus originate from the ilium and insert into the greater trochanter of the femur.',
      'Innervation': 'Innervated by branches of the sacral plexus, including the superior gluteal nerve.',
      'Blood Supply': 'Supplied by branches of the internal iliac artery.',
      'Common Injuries':
      'Gluteal muscle strains or tears, often resulting from explosive movements or overuse.\nPiriformis syndrome, a condition characterized by compression of the sciatic nerve by the piriformis muscle.',
      'Exercises':
      'Squats, lunges, hip thrusts, deadlifts, glute bridges, and lateral band walks.',
      'Nutrition and Supplements':
      'A balanced diet with adequate protein intake to support muscle repair and growth.\nSupplements like vitamin D and magnesium may support muscle function and recovery.'
    },
    'Triceps': {
      'Function':
      'Primary function is extension of the elbow, as well as assisting in shoulder extension and adduction.',
      'Origin and Insertion':
      'Comprised of three heads: long head, lateral head, and medial head.\nLong head originates from the scapula, lateral head originates from the humerus, and medial head originates from the humerus.\nAll three heads merge and insert into the ulna bone of the forearm.',
      'Innervation': 'Innervated by the radial nerve.',
      'Blood Supply': 'Supplied by branches of the brachial artery.',
      'Common Injuries':
      'Triceps strains or tears, often resulting from repetitive movements or overloading.\nTendonitis at the insertion point of the triceps.',
      'Exercises':
      'Tricep dips, tricep pushdowns, overhead tricep extensions, skull crushers, and close-grip bench press.',
      'Nutrition and Supplements':
      'A balanced diet with adequate protein intake to support muscle repair and recovery.\nSupplements like glutamine and collagen peptides may support tendon health and repair.'
    },
    'Lats': {
      'Function':
      'Primary function is extension, adduction, and internal rotation of the shoulder joint, as well as extension and lateral flexion of the spine.',
      'Origin and Insertion':
      'Originates from the lower thoracic vertebrae, the iliac crest of the pelvis, and the thoracolumbar fascia. Inserts into the humerus.',
      'Innervation': 'Innervated by the thoracodorsal nerve (branch of the brachial plexus).',
      'Blood Supply': 'Supplied by branches of the subclavian artery.',
      'Common Injuries':
      'Strains or tears from overuse or improper lifting techniques.\nLatissimus dorsi tendinopathy, especially at the insertion point of the muscle.',
      'Exercises':
      'Pull-ups, chin-ups, lat pulldowns, bent-over rows, and seated cable rows.',
      'Nutrition and Supplements':
      'A balanced diet with adequate protein intake to support muscle repair and growth.\nSupplements like omega-3 fatty acids may help reduce inflammation and support joint health.'
    },
    'Quads': {
      'Function':
      'Primary function is knee extension, as well as assisting in hip flexion and stabilization of the knee joint.',
      'Origin and Insertion':
      'Comprised of four muscles: rectus femoris, vastus lateralis, vastus medialis, and vastus intermedius.\nOriginate from the pelvis and femur bones and insert into the patella (kneecap) and tibia bone.',
      'Innervation': 'Innervated by the femoral nerve.',
      'Blood Supply': 'Supplied by branches of the femoral artery.',
      'Common Injuries':
      'Quad strains or tears, often resulting from sudden acceleration or deceleration movements.\nPatellar tendinopathy (jumper’s knee) or quadriceps tendinitis.',
      'Exercises':
      'Squats, lunges, leg press, leg extensions, and step-ups.',
      'Nutrition and Supplements':
      'A balanced diet with adequate protein intake to support muscle repair and growth.\nSupplements like collagen peptides may support tendon health and recovery.'
    },
    'Forearms': {
      'Function':
      'Primary function is wrist flexion and extension, as well as finger flexion and extension.',
      'Origin and Insertion':
      'Comprised of multiple muscles including the flexor muscles (flexor carpi ulnaris, flexor carpi radialis, and palmaris longus) and extensor muscles (extensor carpi radialis longus, extensor carpi radialis brevis, and extensor carpi ulnaris).\nOriginate from the humerus and/or the radius and ulna bones and insert into various points on the hand and fingers.',
      'Innervation': 'Innervated by branches of the median nerve, ulnar nerve, and radial nerve.',
      'Blood Supply': 'Supplied by branches of the radial and ulnar arteries.',
      'Common Injuries':
      'Forearm strains or tears from repetitive motions or overuse.\nCarpal tunnel syndrome, a condition characterized by compression of the median nerve in the wrist.',
      'Exercises':
      'Wrist curls, reverse wrist curls, hammer curls, wrist roller exercises, and grip strength exercises.',
      'Nutrition and Supplements':
      'A balanced diet with adequate protein intake to support muscle repair and recovery.\nSupplements like omega-3 fatty acids may help reduce inflammation and support joint health.'
    },
    'Abs': {
      'Function':
      'Primary function is trunk flexion, lateral flexion, and rotation, as well as providing stability and support for the spine and pelvis.',
      'Origin and Insertion':
      'Comprised of multiple muscles including the rectus abdominis, external obliques, internal obliques, and transverse abdominis.\nOriginate from the rib cage, pelvis, and lumbar vertebrae and insert into various points on the pelvis, ribs, and linea alba (connective tissue in the midline of the abdomen).',
      'Innervation': 'Innervated by branches of the thoracic and lumbar spinal nerves.',
      'Blood Supply': 'Supplied by branches of the abdominal aorta and intercostal arteries.',
      'Common Injuries':
      'Abdominal strains or tears from overuse or improper lifting techniques.\nHernias, which occur when part of an organ protrudes through weak abdominal muscles.',
      'Exercises':
      'Crunches, sit-ups, leg raises, Russian twists, plank variations, and bicycle crunches.',
      'Nutrition and Supplements':
      'A balanced diet with adequate protein intake to support muscle repair and recovery.\nSupplements like probiotics may support digestive health and reduce bloating.'
    },
    // Add data for other muscles here...
  };

}