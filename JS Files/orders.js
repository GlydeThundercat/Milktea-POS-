// Store the current order state
let orderState = {
    base: '',
    size: '',
    toppings: [],
    quantity: 1
};

// Base selection
function selectBase(baseName) {
    // Remove selected class from all base cards
    document.querySelectorAll('.milktea-base-card').forEach(card => {
        card.classList.remove('selected');
    });
    
    // Add selected class to clicked card
    const selectedCard = document.querySelector(`#card-base-${baseName.toLowerCase().replace(' ', '')}`);
    if (selectedCard) {
        selectedCard.classList.add('selected');
    }
    
    // Update order state
    orderState.base = baseName;
    updateSummary();
}

// Size selection
function selectSize(size) {
    // Remove selected class from all size buttons
    document.querySelectorAll('.size-btn').forEach(btn => {
        btn.classList.remove('bg-primary', 'text-white');
        btn.classList.add('bg-secondary-light', 'text-primary-dark');
    });
    
    // Add selected class to clicked button
    const selectedBtn = document.querySelector(`#size-${size.toLowerCase()}`);
    if (selectedBtn) {
        selectedBtn.classList.remove('bg-secondary-light', 'text-primary-dark');
        selectedBtn.classList.add('bg-primary', 'text-white');
    }
    
    // Update order state
    orderState.size = size;
    updateSummary();
}

// Topping selection
function toggleTopping(topping) {
    const elements = window.contains('.topping-btn span', topping);
    if (!elements || elements.length === 0) return;
    
    const btn = elements[0].parentElement;
    if (!btn) return;
    
    if (orderState.toppings.includes(topping)) {
        // Remove topping
        orderState.toppings = orderState.toppings.filter(t => t !== topping);
        btn.classList.remove('bg-primary', 'text-white');
        btn.classList.add('bg-white', 'text-primary-dark');
    } else {
        // Add topping
        orderState.toppings.push(topping);
        btn.classList.remove('bg-white', 'text-primary-dark');
        btn.classList.add('bg-primary', 'text-white');
    }
    
    updateSummary();
}

// Quantity adjustment
function updateQuantity(change) {
    const newQty = orderState.quantity + change;
    if (newQty >= 1 && newQty <= 10) {  // Set reasonable limits
        orderState.quantity = newQty;
        document.getElementById('order-qty').textContent = newQty;
        updateSummary();
    }
}

// Update order summary
function updateSummary() {
    // Update base
    document.getElementById('summary-base-value').textContent = orderState.base || 'Not selected';
    
    // Update size
    document.getElementById('summary-size-value').textContent = orderState.size || 'Not selected';
    
    // Update toppings
    const toppingsElement = document.getElementById('summary-toppings-value');
    toppingsElement.textContent = orderState.toppings.length > 0 
        ? orderState.toppings.join(', ') 
        : 'None';
    
    // Update quantity
    document.getElementById('summary-qty-value').textContent = orderState.quantity;
}

// Helper function for jQuery-like contains selector
function addContainsSelector() {
    if (!Element.prototype.matches) {
        Element.prototype.matches = Element.prototype.msMatchesSelector || Element.prototype.webkitMatchesSelector;
    }
    
    if (!Element.prototype.closest) {
        Element.prototype.closest = function(s) {
            var el = this;
            do {
                if (el.matches(s)) return el;
                el = el.parentElement || el.parentNode;
            } while (el !== null && el.nodeType === 1);
            return null;
        };
    }
    
    // Add :contains selector support
    const contains = function(selector, text) {
        const elements = document.querySelectorAll(selector);
        return Array.from(elements).filter(function(element) {
            return RegExp(text).test(element.textContent);
        });
    };
    
    // Add as a global helper
    window.contains = contains;
}

// Initialize the form
document.addEventListener('DOMContentLoaded', function() {
    // Add contains selector support
    addContainsSelector();
    
    // Set initial summary values
    updateSummary();
}); 